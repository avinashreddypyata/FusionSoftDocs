 package com.fusionsoft.docs.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.Applicant;
import com.fusionsoft.docs.model.Certification;
import com.fusionsoft.docs.model.Contact;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.FileBucket;
import com.fusionsoft.docs.model.Passport;
import com.fusionsoft.docs.model.Travel;
import com.fusionsoft.docs.service.CertificateDetailsNotFound;
import com.fusionsoft.docs.service.CertificateNotFoundService;
import com.fusionsoft.docs.service.EducationNotFoundExceptionService;
import com.fusionsoft.docs.service.ExperienceNotFoundService;
import com.fusionsoft.docs.service.FindTravelByIdNotFoundService;
import com.fusionsoft.docs.service.FindTravelDetailsNotFoundService;
import com.fusionsoft.docs.service.PassportNotFoundInService;
import com.fusionsoft.docs.service.UserService;
import com.fusionsoft.docs.service.applicantnotfoundservice;
import com.fusionsoft.docs.service.contactnotfoundservice;
import com.fusionsoft.docs.service.documentnotfoundservice;
import com.fusionsoft.docs.service.experiencesnotfoundbyid;
import com.fusionsoft.docs.service.userbydocidnotfoundservice;

@Controller
@RequestMapping(value = { "/user" })
public class UserHomePageController {
	@Autowired
	private UserService userservice;
	@Autowired
	public UserDao userDao;
	
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public ModelAndView userPage() {
		
		ModelAndView model = new ModelAndView();
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser user = null;
		if (principal instanceof CustomUser) {
			user = ((CustomUser) principal);
		}
		CustomUser customuser = userservice.findCustomUser(user.getUserid());
		Applicant applicant = null;
		try {
			applicant = userservice.findapplicant(user.getUserid());
		} catch (applicantnotfoundservice e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(customuser.getFirstlogin() == 1){
			System.out.println("The firstlogin is");
			model.setViewName("redirect:editorcreatenewapplication");
			userservice.updatefirstlogin(user.getUserid());
		}
		else{
            Passport passport = null;
			try {
				passport = userservice.findpassport(user.getUserid());
			} catch (PassportNotFoundInService e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addObject("passport",passport);
			Contact contact = null;
			try {
				contact = userservice.findcontact(user.getUserid());
			} catch (contactnotfoundservice e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addObject("contact",contact);
			
			model.addObject("applicant",applicant);
			List<Travel> traveldetails = null;
			try {
				traveldetails = userservice.findtraveldetails(user.getUserid());
			} catch (FindTravelDetailsNotFoundService e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addObject("traveldetails",traveldetails);
			System.out.println(traveldetails.size());
			List<Experience> experiencedetails = null;
			try {
				experiencedetails = userservice.findexperiences(user.getUserid());
			} catch (experiencesnotfoundbyid e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addObject("experiencedetails",experiencedetails);
			System.out.println(experiencedetails.size());
			List<Education> educationdetails=userservice.findqualifications(user.getUserid());
			model.addObject("educationdetails",educationdetails);
			List<Document> documents = new ArrayList<Document>();
		    documents = userservice.findalldocuments(getCustomUser().getUserid());
			model.addObject("documents",documents);
			List<Certification> certificationdetails = null;
			try {
				certificationdetails = userservice.findcertificationdetails(user.getUserid());
			} catch (CertificateDetailsNotFound e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addObject("certificationdetails",certificationdetails);
//			model.addObject("status",customuser.getApplicationstatus());
	        model.setViewName("user/UserHome");
		}
		return model;
	}
	public CustomUser getCustomUser(){
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser user = null;
		if (principal instanceof CustomUser) {
			user = ((CustomUser) principal);
		}
		return user;
	}
	@RequestMapping(value = "/viewapplicant", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView viewapplication() {
		ModelAndView model = new ModelAndView();
		 CustomUser user = getCustomUser();
		 Applicant applicant = new Applicant();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(user.getUserid());
         try {
        	 applicant = userservice.findapplicant(user.getUserid());
		} catch (applicantnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         if(applicant == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.setViewName("redirect:editorcreatenewapplication");
         }
         else{
        	
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
		model.addObject("applicant", applicant);
		model.addObject("documents", documents);
		model.setViewName("user/ViewApplication");
         }
        return model;
        
	}
	/*create a new application or edit existing application based on the changes made by the user*/
	@RequestMapping(value = "/editorcreatenewapplication", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewapplication(@ModelAttribute("applicant") Applicant applicant,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("user/ApplicationForm");
		 CustomUser user = getCustomUser();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(user.getUserid());
         try {
			applicant = userservice.findapplicant(user.getUserid());
		} catch (applicantnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         if(applicant == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Applicant());
         }
         else{
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
		model.addObject("applicant", applicant);
		model.addObject("documents", documents);
		
         }
        return model;
        
	}
	@InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
     SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
     dateFormat.setLenient(false);
     webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
     }
	/*Saving Or Updating The Changes Made By Applicant*/
	@RequestMapping(value = "/saveorupdateapplication", method = RequestMethod.POST)
	public ModelAndView saveorupdateapplication(@ModelAttribute("applicant") Applicant applicant, BindingResult result) {
		ModelAndView model = new ModelAndView("redirect:viewcontact");
		
		CustomUser customuser = getCustomUser();
		
		if(applicant.getUserid() == 0){
		    
		    userservice.saveapplication(customuser,applicant);
		}
		    else{
		    	userservice.updateapplication(customuser,applicant);
		    }
		    return model;
			}
	@RequestMapping(value = "/viewcontact", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView viewcontact() {
		ModelAndView model = new ModelAndView();
		 CustomUser user = getCustomUser();
		 Contact contact = new Contact();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(user.getUserid());
         try {
			contact = userservice.findcontact(user.getUserid());
		} catch (contactnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         if(contact == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.setViewName("redirect:editorcreatenewcontact");
         }
         else{
        	
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
		model.addObject("contact", contact);
		model.addObject("documents", documents);
		model.setViewName("user/ViewContact");
         }
        return model;
        
	}
	/*create a new application or edit existing contact details based on the changes made by the user*/
	@RequestMapping(value = "/editorcreatenewcontact", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewcontact(@ModelAttribute("contact") Contact contact) {
		ModelAndView model = new ModelAndView("user/ContactForm");
		 CustomUser user = getCustomUser();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(user.getUserid());
         try {
			contact = userservice.findcontact(user.getUserid());
		} catch (contactnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         if(contact == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Contact());
         }
         else{
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
        	 model.addObject("documents", documents);
        	 model.addObject("contact", contact);
         }
        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatecontact", method = RequestMethod.POST)
	public ModelAndView saveorupdatecontact(@ModelAttribute("contact") Contact contact) {
		ModelAndView model = new ModelAndView("redirect:viewpassport");
		CustomUser customuser = getCustomUser();
		if(contact.getUserid() == 0){
		    
		    userservice.savecontact(customuser,contact);
		}
		    else{
		    	userservice.updatecontact(customuser,contact);
		    }
		    return model;
			}
	/*create a new application or edit existing contact details based on the changes made by the user*/
	@RequestMapping(value = "/viewpassport", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView viewpassport() {
		ModelAndView model = new ModelAndView();
		 CustomUser user = getCustomUser();
		 Passport passport = new Passport();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(user.getUserid());
         try {
			passport = userservice.findpassport(user.getUserid());
		} catch (PassportNotFoundInService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         if(passport == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.setViewName("redirect:editorcreatenewpassport");
         }
         else{
        	
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
		model.addObject("passport", passport);
		model.addObject("documents", documents);
		model.setViewName("user/ViewPassport");
         }
        return model;
        
	}
	/*create a new application or edit existing contact details based on the changes made by the user*/
	@RequestMapping(value = "/editorcreatenewpassport", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewpassport(@ModelAttribute("passport") Passport passport) {
		ModelAndView model = new ModelAndView("user/PassportForm");
		 CustomUser user = getCustomUser();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(user.getUserid());
		 System.out.println("The passport id is"+passport.getUserid());
         try {
			passport = userservice.findpassport(user.getUserid());
		} catch (PassportNotFoundInService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         if(passport == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Passport());
         }
         else{
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
		model.addObject("passport", passport);
		model.addObject("documents", documents);
         }
        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatepassport", method = RequestMethod.POST)
	public ModelAndView saveorupdatepassport(@ModelAttribute("passport") Passport passport) {
		ModelAndView model = new ModelAndView("redirect:traveldetails");
		CustomUser customuser = getCustomUser();
		if(passport.getUserid() == 0){
		    
		    userservice.savepassport(customuser,passport);
		}
		    else{
		    	userservice.updatepassport(customuser,passport);
		    	
		    }
		    return model;
			}
	//checks whether the user has atleast one entry in travel history
	@RequestMapping(value = "/traveldetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView traveldetails() {
		ModelAndView model = new ModelAndView();
		 CustomUser user = getCustomUser();
         List<Travel> traveldetails = null;
		try {
			traveldetails = userservice.findtraveldetails(user.getUserid());
		} catch (FindTravelDetailsNotFoundService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         if(traveldetails.isEmpty()){
        	 /*If Entering First Time redirects to empty form with travel form*/
        	 model.setViewName("redirect:editorcreatenewtravel");
         }
         else{
        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
		model.setViewName("user/TravelHistory");
		model.addObject("traveldetails", traveldetails);
         }
        return model;
        
	}
	@RequestMapping(value = "/editorcreatenewtravel", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewtravel(@ModelAttribute("travel") Travel travel,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("user/TravelForm");
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Travel());

        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatetravel", method = RequestMethod.POST)
	public ModelAndView saveorupdatetravel(@ModelAttribute("travel") Travel travel) {
		ModelAndView model = new ModelAndView("redirect:traveldetails");
		System.out.println("The Travel Id in saveorupdate controller is"+travel.getTravelid());
		CustomUser customuser = getCustomUser();
		if(travel.getTravelid() == 0){
		    userservice.savetravel(customuser,travel);
		}
		    else{
		    	System.out.println("The CustomUser is "+customuser.getUserid());
		    	userservice.updatetravel(customuser,travel);
		    }
		    return model;
			}
	@RequestMapping(value = "/deletetravel", method = RequestMethod.POST)
	public ModelAndView deletetravel(@ModelAttribute("travelid") int travelid) {
		ModelAndView model = new ModelAndView("forward:traveldetails"); 
		System.out.println("The Travel Id is "+travelid);
		userservice.deletetravel(travelid);
		    return model;
			}
	@RequestMapping(value = "/edittravel", method = RequestMethod.POST)
	public ModelAndView edittravel(@ModelAttribute("travelid") int travelid) {
		ModelAndView model = new ModelAndView("user/TravelForm");
		System.out.println("The TravelId for edit travel is"+travelid);
		List<Document> documents = null;
		Travel travel = null;
		try {
			travel = userservice.findtravel(travelid);
			documents = travel.getDocuments();
		} catch (FindTravelByIdNotFoundService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addObject("travel",travel);
		
		model.addObject("documents",documents);
		System.out.println("The Travel Id is "+travelid);
		    return model;
			}
	@RequestMapping(value = "/educationdetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView educationdetails() {
		ModelAndView model = new ModelAndView();
		 CustomUser user = getCustomUser();
         List<Education> educationdetails = userservice.findqualifications(user.getUserid());
         if(educationdetails.isEmpty()){
        	 /*If Entering First Time redirects to empty form with travel form*/
        	 model.setViewName("redirect:editorcreateneweducation");
         }
         else{
        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
		model.setViewName("user/EducationDetails");
		System.out.println("The size is"+educationdetails.size());
		model.addObject("educationdetails", educationdetails);
         }
        return model;
        
	}
	@RequestMapping(value = "/editorcreateneweducation", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreateneweducation(@ModelAttribute("education") Education education,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("user/EducationForm");
		 if(request == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Education());
         }
         else{
        /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
//        	 int travelid = Integer.parseInt(request.getParameter("travelid"));
        	 model.addObject("education", new Education());
         }
        return model;
        
	}
	@RequestMapping(value = "/saveorupdateeducation", method = RequestMethod.POST)
	public ModelAndView saveorupdateeducation(@ModelAttribute("education") Education education) {
		ModelAndView model = new ModelAndView("redirect:educationdetails");
		CustomUser customuser = getCustomUser();
		if(education.getEduid() == 0){
		    userservice.saveeducation(customuser, education);
		}
		    else{
		    	userservice.updateeducation(customuser,education);
		    }
		    return model;
			}
	@RequestMapping(value = "/deleteeducation", method = RequestMethod.POST)
	public ModelAndView deleteeducation(@ModelAttribute("eduid") int eduid) {
		ModelAndView model = new ModelAndView("forward:educationdetails");
		System.out.println("The Travel Id is "+eduid);
		userservice.deleteeducation(eduid);
		    return model;
			}
	@RequestMapping(value = "/editeducation", method = RequestMethod.POST)
	public ModelAndView editeducation(@ModelAttribute("eduid") int eduid) {
		ModelAndView model = new ModelAndView("user/EducationForm");
		System.out.println("The TravelId for edit travel is"+eduid);
		List<Document> documents = null;
		Education education = null;
		try {
			education = userservice.findeducation(eduid);
			documents = education.getDocuments();
		} catch (EducationNotFoundExceptionService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addObject("documents",documents);
		model.addObject("education",education);
		System.out.println("The Travel Id is "+eduid);
		    return model;
			}
	@RequestMapping(value = "/experiencedetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView experiencedetails() {
		ModelAndView model = new ModelAndView();
		 CustomUser user = getCustomUser();
         List<Experience> experiencedetails = null;
		try {
			experiencedetails = userservice.findexperiences(user.getUserid());
		} catch (experiencesnotfoundbyid e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         if(experiencedetails.isEmpty()){
        	 /*If Entering First Time redirects to empty form with travel form*/
        	 model.setViewName("redirect:editorcreatenewexperience");
         }
         else{
        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
		model.setViewName("user/ExperienceHistory");
		model.addObject("experiencedetails", experiencedetails);
         }
        return model;
        
	}
	@RequestMapping(value = "/editorcreatenewexperience", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewexperience(@ModelAttribute("experience") Experience experience,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("user/ExperienceForm");
		 if(request == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Experience());
         }
         else{
        /*If applicant wants to edit already present information then existing appli cant object is taken from the database and sent back to view*/
//        	 int travelid = Integer.parseInt(request.getParameter("travelid"));
        	 model.addObject("experience", new Experience());
         }
        return model;
        
	}
	@RequestMapping(value = "/saveorupdateexperience", method = RequestMethod.POST)
	public ModelAndView saveorupdateexperience(@ModelAttribute("experience") Experience experience) {
		ModelAndView model = new ModelAndView("redirect:experiencedetails");
		CustomUser customuser = getCustomUser();
		if(experience.getExpid() == 0){
		    userservice.saveexperience(customuser, experience);
		}
		    else{
		    	userservice.updateexperience(customuser,experience);
		    }
		    return model;
			}
	@RequestMapping(value = "/deleteexperience", method = RequestMethod.POST)
	public ModelAndView deleteexperience(@ModelAttribute("expid") int expid) {
		ModelAndView model = new ModelAndView("forward:experiencedetails");
		System.out.println("The Travel Id is "+expid);
		userservice.deleteexperience(expid);
		    return model;
			}
	@RequestMapping(value = "/editexperience", method = RequestMethod.POST)
	public ModelAndView editexperience(@ModelAttribute("expid") int expid) {
		ModelAndView model = new ModelAndView("user/ExperienceForm");
		List<Document> documents = null;
		Experience experience = null;
		try {
			experience = userservice.findexperience(expid);
			documents = experience.getDocuments();
		} catch (ExperienceNotFoundService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("The Docs Size is"+documents.size());
		model.addObject("documents",documents);
		model.addObject("experience",experience);
		
		    return model;
			}
	//check whether user has atleast one entry in certification details
		@RequestMapping(value = "/certificateDetails", method = {RequestMethod.POST,RequestMethod.GET})
		public ModelAndView certificateDetails() {
			ModelAndView model = new ModelAndView();
			 CustomUser user = getCustomUser();
	         List<Certification> certificationdetails = null;
			try {
				certificationdetails = userservice.findcertificationdetails(user.getUserid());
			} catch (CertificateDetailsNotFound e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	         if(certificationdetails.isEmpty()){
	        	 /*If Entering First Time redirects to empty form with travel form*/
	        	 model.setViewName("redirect:editorcreatenewcertificate");
	         }
	         else{
	        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
			model.setViewName("user/CertificationDetails");
			model.addObject("certificationdetails", certificationdetails);
	         }
	        return model;
	        
		}
		
		//if the user wants to create or edit certification which exists
		
		@RequestMapping(value = "/editorcreatenewcertificate", method = {RequestMethod.POST,RequestMethod.GET})
		public ModelAndView editorcreatenewtravel(@ModelAttribute("certification") Certification certification,HttpServletRequest request) {
			ModelAndView model = new ModelAndView("user/CertificateForm");
			 if(request == null){
	        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
	        	 model.addObject(new Certification());
	         }
	         else{
	        /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
//	        	 int travelid = Integer.parseInt(request.getParameter("travelid"));
	        	 model.addObject("certification", new Certification());
	         }
	        return model;
	        
		}
		
		/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
		@RequestMapping(value = "/saveorupdatecertification", method = RequestMethod.POST)
		public ModelAndView saveorupdatetravel(@ModelAttribute("certification") Certification certification) {
			ModelAndView model = new ModelAndView("redirect:certificateDetails");
			CustomUser customuser = getCustomUser();
			if(certification.getCertificationId()== 0){
			  
			    userservice.savecertification(customuser,certification);
			}
			    else{
			    	userservice.updatecertification(customuser,certification);
			    }
			    return model;
				}
		@RequestMapping(value = "/deletecertificate", method = RequestMethod.POST)
		public ModelAndView deletecertificate(@ModelAttribute("certificationid") int certificationid) {
			ModelAndView model = new ModelAndView("forward:certificateDetails");
			System.out.println("The Travel Id is "+certificationid);
			userservice.deletecertificate(certificationid);
			    return model;
				}
		@RequestMapping(value = "/editcertificate", method = RequestMethod.POST)
		public ModelAndView editcertificate(@ModelAttribute("certificationid") int certificationid) {
			ModelAndView model = new ModelAndView("user/CertificateForm");
			List<Document> documents = null;
			Certification certification = null;
			try {
				certification = userservice.findcertificate(certificationid);
				documents = certification.getDocuments();
			} catch (CertificateNotFoundService e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addObject("certification",certification);
			model.addObject("documents",documents);
			    return model;
				}
	@RequestMapping(value = "/editorcreatenewdocument",method = RequestMethod.GET)
	public ModelAndView editorcreatenewdocument(@ModelAttribute("fileBucket") FileBucket filebucket){
	
	ModelAndView model = new ModelAndView("user/DocumentForm");
	model.addObject("filebucket", new FileBucket());
	
	return model;
	
		
	}
	@RequestMapping(value = "/uploaddocument",method = RequestMethod.POST)
	public ModelAndView uploaddocument(@ModelAttribute("fileBucket") FileBucket fileBucket, HttpServletRequest request){
	CustomUser customuser = getCustomUser();
	System.out.println("The userid is"+customuser.getUserid());
	System.out.println("The doctype is"+fileBucket.getDoctype());
	int docid = userservice.saveDocument(fileBucket,customuser);
	System.out.println("The docid is"+docid);
	ModelAndView model = new ModelAndView("redirect:applicantdocument");
	return model;	
		
	}
	@RequestMapping(value = "/downloadDoc",method = RequestMethod.POST)
	public void downloaddocument(@ModelAttribute("docid") int docid, HttpServletResponse response) throws IOException{
	System.out.println("The Docid is"+docid);
	
	Document document = null;
	try {
		document = userservice.finddocument(docid);
	} catch (documentnotfoundservice e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	File file = new File(document.getDoclocation());
	InputStream fileInputStream = new FileInputStream(file);
	
	response.setContentType(document.getDoctype());
	response.setContentLength((int) file.length());
	response.setHeader("Content-Disposition","attachment; filename=\"" + document.getDoctitle() +"\"");
	ServletOutputStream os       = response.getOutputStream();
	byte[] bufferData = new byte[1024];
	int read=0;
	while((read = fileInputStream.read(bufferData))!= -1){
		os.write(bufferData, 0, read);
	}
	os.flush();
	os.close();
	fileInputStream.close();
	System.out.println("File downloaded at client successfully");
	}
	@RequestMapping(value = "/deleteDoc",method = RequestMethod.POST)
	public ModelAndView deleteDoc(@ModelAttribute("docid") int docid) throws IOException{
		ModelAndView model = new ModelAndView();
	try {
		Document document = userservice.finddocument(docid);
		System.out.println("The Doctype To Redirect is"+document.getDoctype());
		System.out.println(document.getDoctype().equals("Passport"));
		if(document.getDoctype().equals("Passport")){
			model.setViewName("redirect:editorcreatenewpassport");
		}else if (document.getDoctype().equals("Contact")){
			model.setViewName("redirect:editorcreatenewcontact");
		}else if (document.getDoctype().equals("Travel")){
			model.setViewName("redirect:traveldetails");
		}else if (document.getDoctype().equals("Experience")){
			model.setViewName("redirect:experiencedetails");
		}else if (document.getDoctype().equals("Education")){
			model.setViewName("redirect:educationdetails");
		}else if (document.getDoctype().equals("Certification")){
			model.setViewName("redirect:certificateDetails");
		}else if (document.getDoctype().equals("Other")){
			model.setViewName("redirect:editorcreatenewapplication");
		}
		else{
			model.setViewName("redirect:applicantdocument");
		}
	} catch (documentnotfoundservice e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     userservice.deletedoc(docid);
     System.out.println("The document id is "+docid);
	 return model;
	
	}
	@RequestMapping(value = "/applicantdocument",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView applicantdocument(@ModelAttribute("filebucket") FileBucket filebucket) throws IOException{
     ModelAndView model = new ModelAndView();
     List<Document> documents = new ArrayList<Document>();
     documents = userservice.findalldocuments(getCustomUser().getUserid());
     
     if(documents.isEmpty()){
        	model.setViewName("user/DocumentForm");
        	model.addObject("filebucket", new FileBucket());
        }else{
        	model.addObject("documents",documents);
        	model.setViewName("user/DocumentDetails");
        }
		
     return model;
	}
	@RequestMapping(value = "/confirmsubmission",method = RequestMethod.GET)
	public ModelAndView confirmsubmission(){
    ModelAndView model = new ModelAndView("user/ConfirmSubmission");
    
    return model;
	}
	@RequestMapping(value = "/submitapplication",method = RequestMethod.GET)
	public ModelAndView submitapplication() throws IOException{
		ModelAndView model = new ModelAndView();
		int userid = getCustomUser().getUserid();
		  Passport passport = null;
		try {
			passport = userservice.findpassport(userid);
		} catch (PassportNotFoundInService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			Contact contact = null;
			try {
				contact = userservice.findcontact(userid);
			} catch (contactnotfoundservice e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Applicant applicant = null;
			try {
				applicant = userservice.findapplicant(userid);
			} catch (applicantnotfoundservice e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			List<Education> educationdetails=userservice.findqualifications(userid);
			HashMap<String,List<Document>> documents=userservice.findparticulardocuments(userid);
     if(passport == null || contact == null || applicant == null || educationdetails.isEmpty() || documents.isEmpty()){
    	 model.addObject("messagetype","danger");
    	 model.addObject("message", "You Have Not Filled Certain Sections Yet");
 	model.setViewName("user/Completed");
    	return model;
     }else{
    	  
    	 userservice.updatecustomusersubmission(userid);
    	 model.addObject("messagetype","success");
    	 model.addObject("message", "Your Application Is Submitted Sucessfully");
    	 model.setViewName("user/Completed");
    	 return model;
     }
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/login";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
	
}


	
	