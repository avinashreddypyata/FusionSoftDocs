 package com.fusionsoft.docs.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

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
import com.fusionsoft.docs.service.UserService;

@Controller
@RequestMapping(value = { "/user" })
public class UserHomePageController {
	@Autowired
	private UserService userservice;
	@Autowired
	public UserDao userDao;
	private static int id;
	private static int firstlogin;
	
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public ModelAndView userPage() {
		ModelAndView model = new ModelAndView();
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser user = null;
		if (principal instanceof CustomUser) {
			user = ((CustomUser) principal);
		}
		firstlogin = user.getFirstlogin();
		if(firstlogin == 1){
			model.setViewName("redirect:editorcreatenewapplication");
			userservice.updatefirstlogin(id);
		}
		else{
            Passport passport=userservice.findpassport(user.getUserid());
			model.addObject("passport",passport);
			Contact contact=userservice.findcontact(user.getUserid());
			model.addObject("contact",contact);
			Applicant applicant=userservice.findapplicant(user.getUserid());
			model.addObject("applicant",applicant);
			List<Travel> traveldetails=userservice.findtraveldetails(user.getUserid());
			model.addObject("traveldetails",traveldetails);
			System.out.println(traveldetails.size());
			List<Experience> experiencedetails=userservice.findexperiences(user.getUserid());
			model.addObject("experiencedetails",experiencedetails);
			System.out.println(experiencedetails.size());
			List<Education> educationdetails=userservice.findqualifications(user.getUserid());
			model.addObject("educationdetails",educationdetails);
			HashMap<String,List<Document>> documents=userservice.findparticulardocuments(user.getUserid());
			model.addObject("documents",documents);
			List<Certification> certificationdetails=userservice.findcertificationdetails(user.getUserid());
			model.addObject("certificationdetails",certificationdetails);
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
	/*create a new application or edit existing application based on the changes made by the user*/
	@RequestMapping(value = "/editorcreatenewapplication", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewapplication(@ModelAttribute("applicant") Applicant applicant,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("user/ApplicationForm");
		 CustomUser user = getCustomUser();
         applicant = userservice.findapplicant(user.getUserid());
         if(applicant == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Applicant());
         }
         else{
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
		model.addObject("applicant", applicant);
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
		ModelAndView model = new ModelAndView("redirect:editorcreatenewcontact");
		CustomUser user = getCustomUser();
		if(applicant.getUserid() == 0){
		    CustomUser customuser = userservice.findCustomUser(user.getUserid());
		    userservice.saveapplication(customuser,applicant);
		}
		    else{
		    	userservice.updateapplication(applicant);
		    }
		    return model;
			}
	/*create a new application or edit existing contact details based on the changes made by the user*/
	@RequestMapping(value = "/editorcreatenewcontact", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewcontact(@ModelAttribute("contact") Contact contact) {
		ModelAndView model = new ModelAndView("user/ContactForm");
		 CustomUser user = getCustomUser();
         contact = userservice.findcontact(user.getUserid());
         if(contact == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Contact());
         }
         else{
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
		model.addObject("contact", contact);
         }
        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatecontact", method = RequestMethod.POST)
	public ModelAndView saveorupdatecontact(@ModelAttribute("contact") Contact contact) {
		ModelAndView model = new ModelAndView("redirect:editorcreatenewpassport");
		CustomUser user = getCustomUser();
		if(contact.getUserid() == 0){
		    CustomUser customuser = userservice.findCustomUser(user.getUserid());
		    userservice.savecontact(customuser,contact);
		}
		    else{
		    	userservice.updatecontact(contact);
		    }
		    return model;
			}
	/*create a new application or edit existing contact details based on the changes made by the user*/
	@RequestMapping(value = "/editorcreatenewpassport", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewpassport(@ModelAttribute("passport") Passport passport) {
		ModelAndView model = new ModelAndView("user/PassportForm");
		 CustomUser user = getCustomUser();
		 System.out.println("The passport id is"+passport.getUserid());
         passport = userservice.findpassport(user.getUserid());
         if(passport == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Passport());
         }
         else{
        	 /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
		model.addObject("passport", passport);
         }
        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatepassport", method = RequestMethod.POST)
	public ModelAndView saveorupdatepassport(@ModelAttribute("passport") Passport passport) {
		ModelAndView model = new ModelAndView("redirect:traveldetails");
		CustomUser user = getCustomUser();
		if(passport.getUserid() == 0){
		    CustomUser customuser = userservice.findCustomUser(user.getUserid());
		    userservice.savepassport(customuser,passport);
		}
		    else{
		    	userservice.updatepassport(passport);
		    }
		    return model;
			}
	//checks whether the user has atleast one entry in travel history
	@RequestMapping(value = "/traveldetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView traveldetails() {
		ModelAndView model = new ModelAndView();
		 CustomUser user = getCustomUser();
         List<Travel> traveldetails = userservice.findtraveldetails(user.getUserid());
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
		 CustomUser user = getCustomUser();
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Travel());

        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatetravel", method = RequestMethod.POST)
	public ModelAndView saveorupdatetravel(@ModelAttribute("travel") Travel travel) {
		ModelAndView model = new ModelAndView("redirect:traveldetails");
		System.out.println("The Travel Id in saveorupdate controller is"+travel.getTravelid());
		CustomUser user = getCustomUser();
		if(travel.getTravelid() == 0){
		    CustomUser customuser = userservice.findCustomUser(user.getUserid());
		    userservice.savetravel(customuser,travel);
		}
		    else{
		    	userservice.updatetravel(travel);
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
		Travel travel = userservice.findtravel(travelid);
		model.addObject("travel",travel);
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
		 CustomUser user = getCustomUser();
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
		CustomUser user = getCustomUser();
		if(education.getEduid() == 0){
		    CustomUser customuser = userservice.findCustomUser(user.getUserid());
		    userservice.saveeducation(customuser, education);
		}
		    else{
		    	userservice.updateeducation(education);
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
		Education education = userservice.findeducation(eduid);
		model.addObject("education",education);
		System.out.println("The Travel Id is "+eduid);
		    return model;
			}
	@RequestMapping(value = "/experiencedetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView experiencedetails() {
		ModelAndView model = new ModelAndView();
		 CustomUser user = getCustomUser();
         List<Experience> experiencedetails = userservice.findexperiences(user.getUserid());
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
		 CustomUser user = getCustomUser();
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
		CustomUser user = getCustomUser();
		if(experience.getExpid() == 0){
		    CustomUser customuser = userservice.findCustomUser(user.getUserid());
		    userservice.saveexperience(customuser, experience);
		}
		    else{
		    	userservice.updateexperience(experience);
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
		Experience experience = userservice.findexperience(expid);
		model.addObject("experience",experience);
		    return model;
			}
	//check whether user has atleast one entry in certification details
		@RequestMapping(value = "/certificateDetails", method = {RequestMethod.POST,RequestMethod.GET})
		public ModelAndView certificateDetails() {
			ModelAndView model = new ModelAndView();
			 CustomUser user = getCustomUser();
	         List<Certification> certificationdetails = userservice.findcertificationdetails(user.getUserid());
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
			 CustomUser user = getCustomUser();
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
			CustomUser user = getCustomUser();
			if(certification.getCertificationId()== 0){
			    CustomUser customuser = userservice.findCustomUser(user.getUserid());
			    userservice.savecertification(customuser,certification);
			}
			    else{
			    	userservice.updatecertification(certification);
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
			Certification certification = userservice.findcertificate(certificationid);
			model.addObject("certification",certification);
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
	Document document =  userservice.finddocument(docid);
	response.setContentType(document.getDoctype());
	response.setContentLength(document.getAttachment().length);
	response.setHeader("Content-Disposition","attachment; filename=\"" + document.getDoctitle() +"\"");
	FileCopyUtils.copy(document.getAttachment(), response.getOutputStream());
	response.flushBuffer();
	}
	@RequestMapping(value = "/deleteDoc",method = RequestMethod.GET)
	public ModelAndView deleteDoc(@ModelAttribute("docid") int docid,HttpServletResponse response, HttpServletRequest request,RedirectAttributes redirectAttributes) throws IOException{
     int userid = userservice.finduseridbydocid(docid);
     userservice.deletedoc(docid);
     System.out.println("The document id is "+docid);
	 redirectAttributes.addFlashAttribute("userid",userid);
	 ModelAndView model = new ModelAndView("redirect:applicantdocument");
	 return model;
	
	}
	@RequestMapping(value = "/applicantdocument",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView applicantdocument(@ModelAttribute("filebucket") FileBucket filebucket) throws IOException{
     ModelAndView model = new ModelAndView();
     HashMap<String,List<Document>> documents = new HashMap<String,List<Document>>();
     documents = userservice.findparticulardocuments(10);
     System.out.println("The Size Of Document is"+documents.size());
        if(documents.isEmpty()){
        	model.setViewName("user/DocumentForm");
        	model.addObject("filebucket", new FileBucket());
        }else{
        	model.addObject("documents",documents);
        	model.setViewName("user/DocumentDetails");
        }
		
     return model;
	}
//	@RequestMapping(value = "/addeducation",method = {RequestMethod.POST, RequestMethod.GET})
//	public ModelAndView addeducation(@ModelAttribute("experience")Experience experience) throws IOException{
//       ModelAndView model = new ModelAndView("user/qualificationsform");
//	 return model;
//	}
//	@RequestMapping(value = "/applicantDeleteexperience",method = RequestMethod.GET)
//	public ModelAndView applicantDeleteexperience(HttpServletRequest request){
//	int expid = Integer.parseInt(request.getParameter("expid"));
//	userservice.deleteexperience(expid);
//    ModelAndView model = new ModelAndView("redirect:applicantexperience");
//    
//    return model;
//	}
//	@RequestMapping(value = "/applicantDeleteeducation",method = RequestMethod.GET)
//	public ModelAndView applicantDeleteeducation(HttpServletRequest request){
//	int eduid = Integer.parseInt(request.getParameter("eduid"));
//	userservice.deleteeducation(eduid);
//    ModelAndView model = new ModelAndView("redirect:applicantqualification");
//    
//    return model;
//	}
	@RequestMapping(value = "/confirmsubmission",method = RequestMethod.GET)
	public ModelAndView confirmsubmission(){
    ModelAndView model = new ModelAndView("user/ConfirmSubmission");
    
    return model;
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


	
	