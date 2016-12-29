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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.Applicant;
import com.fusionsoft.docs.model.Attorney;
import com.fusionsoft.docs.model.Certification;
import com.fusionsoft.docs.model.Contact;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Email;
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

@Controller
@RequestMapping(value = { "/admin" })
public class AdminHomePageController {
	@Autowired
	public UserDao userDao;
	private static int id;

	@Autowired
	private UserService userservice;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request) {
        List<Attorney> attorneys = new ArrayList<Attorney>(); 
		ModelAndView model = new ModelAndView("admin/home");

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser logedinUser = null;
		if (principal instanceof CustomUser) {
			logedinUser = ((CustomUser) principal);
		}
		
		attorneys = userservice.findallattorneys();
		model.addObject("attorneys",attorneys);
		System.out.println("the logged user is" + logedinUser.getUsername());
		model.addObject("userFullName", logedinUser.getUsername());
		System.out.println("the end");

		return model;
	}
	@RequestMapping(value = "/applicants", method = RequestMethod.GET)
	public ModelAndView applicants(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/applicants");
      	List<CustomUser> customusers = userservice.findallcustomusers();
      	List<CustomUser> notsubmittedusers = new ArrayList<CustomUser>();
      	List<CustomUser> submittedusers = new ArrayList<CustomUser>();
      	customusers.forEach(customuser->{
      		if(customuser.getSubmission().equals("done")){
      			System.out.println("The CustomUSER"+customuser.getUsername()+"The submission is"+customuser.getSubmission());
      			submittedusers.add(customuser);
      		}else{
      			notsubmittedusers.add(customuser);
      		}
      	});
      	 System.out.println("The List Size of notsubmittedusers is "+notsubmittedusers.size());
      	 System.out.println("The List Size of submittedusers is "+submittedusers.size());
      	 model.addObject("notsubmittedusers", notsubmittedusers);
      	model.addObject("submittedusers", submittedusers);
        return model;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public UserService getUserservice() {
		return userservice;
	}
	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}
	
	@RequestMapping(value = "/addnewapplicant", method = RequestMethod.GET)
	public ModelAndView addnewapplicant(@ModelAttribute("username") String username,  HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/NewApplicant");
		 return model;
	}
	@RequestMapping(value = "/savenewapplicant", method = RequestMethod.POST)
	public ModelAndView savenewapplicant(@ModelAttribute("customuser") CustomUser customuser,  HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		String emailmessage;
		String password = userservice.saveapplicant(customuser);
		 emailmessage = "FusionSoft has Created a new Profile \n\n The Credentials are as follows\n"+"Username:"+customuser.getUsername()+"\nPassword:"+password;
			model.setViewName("redirect:applicants");
		Email email = new Email(customuser.getUsername(),emailmessage);
		try{
			userservice.emailapplicant(email);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		   return model;
	}
	@RequestMapping(value =  "/applicant" , method = RequestMethod.GET)
	public ModelAndView setapplicantid(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		    System.out.println("The Logged User is"+request.getParameter("userid"));
		    id=  Integer.parseInt(request.getParameter("userid"));
            model.setViewName("redirect:overview");
		return model;
	}
	@RequestMapping(value =  "/overview" , method = RequestMethod.GET)
	public ModelAndView overview() {
		 List<Attorney> attorneys = new ArrayList<Attorney>(); 
		ModelAndView model = new ModelAndView();
		Applicant applicant = null;
		try {
			applicant = userservice.findapplicant(id);
		} catch (applicantnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		attorneys = userservice.findallattorneys();
		model.addObject("attorneys",attorneys);
		model.addObject("applicant",applicant);
	    model.setViewName("admin/Overview");
		return model;
	}
	
	@RequestMapping(value =  "/verifyapplication" , method = RequestMethod.POST)
	public ModelAndView verifyapplication(@ModelAttribute("userid") int userid) {
		ModelAndView model = new ModelAndView();
		Applicant applicant = null;
		try {
			applicant = userservice.findapplicant(id);
			userservice.updateapplicationadminverification(applicant, "Verified  By  Admin");
		} catch (applicantnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
            model.setViewName("redirect:overview");
		return model;
	}
	@RequestMapping(value =  "/assigntoattorney" , method = RequestMethod.GET)
	public ModelAndView assigntoattorny(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		Applicant applicant = null;
		Attorney attorney = null;
		int attorneyid;
		int applicantid;
		attorneyid=  Integer.parseInt(request.getParameter("attorneyid"));
		applicantid=  Integer.parseInt(request.getParameter("applicantid"));
		System.out.println("the Attorney id "+attorneyid);
		try {
			attorney = userservice.findattorneybyattorneyid(attorneyid);
			applicant = userservice.findapplicant(applicantid);
			
			userservice.updateapplicationattorneyverification(applicant, attorney);
		} catch (applicantnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
            model.setViewName("redirect:overview");
		return model;
	}
	@RequestMapping(value =  "/assigntoeducationevaluation" , method = RequestMethod.POST)
	public ModelAndView assigntoeducationevaluation(@ModelAttribute("userid") int userid) {
		ModelAndView model = new ModelAndView();
		Applicant applicant = null;
		try {
			applicant = userservice.findapplicant(id);
			userservice.updateapplicationeducationevaluation(applicant, "Assigned  To  Education Evaluation");
		} catch (applicantnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
            model.setViewName("redirect:overview");
		return model;
	}
	@InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
     SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
     dateFormat.setLenient(false);
     webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
     }
	@RequestMapping(value = "/viewapplicant", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView viewapplication() {
		ModelAndView model = new ModelAndView();
		 Applicant applicant = new Applicant();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(id);
         try {
        	 applicant = userservice.findapplicant(id);
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
		model.setViewName("admin/ViewApplication");
         }
        return model;
	}
	@RequestMapping(value = "/editorcreatenewapplication", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewapplication(@ModelAttribute("applicant") Applicant applicant,HttpServletRequest request, BindingResult result) {
		ModelAndView model = new ModelAndView("admin/ApplicationInfo");
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(id);
         try {
			applicant = userservice.findapplicant(id);
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
	/*Saving Or Updating The Changes Made By Applicant*/
	@RequestMapping(value = "/saveorupdateapplication", method = RequestMethod.POST)
	public ModelAndView saveorupdateapplication(@ModelAttribute("applicant") Applicant applicant, BindingResult result) {
		ModelAndView model = new ModelAndView("redirect:viewcontact");
//		CustomUser user = getCustomUser();
		CustomUser customuser = userservice.findCustomUser(id);
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
		 Contact contact = new Contact();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(id);
         try {
			contact = userservice.findcontact(id);
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
		model.setViewName("admin/ViewContact");
         }
        return model;
        
	}
	/*create a new application or edit existing contact details based on the changes made by the user*/
	@RequestMapping(value = "/editorcreatenewcontact", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewcontact(@ModelAttribute("contact") Contact contact, BindingResult result) {
		ModelAndView model = new ModelAndView("admin/ContactInfo");
		HashMap<String,List<Document>> documents=userservice.findparticulardocuments(id);
         try {
			contact = userservice.findcontact(id);
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
        	 model.addObject("contact", contact);
     		model.addObject("documents", documents);
         }
        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatecontact", method = RequestMethod.POST)
	public ModelAndView saveorupdatecontact(@ModelAttribute("contact") Contact contact) {
		ModelAndView model = new ModelAndView("redirect:viewpassport");
		 CustomUser customuser = userservice.findCustomUser(id);
		if(contact.getUserid() == 0){
		   
		    userservice.savecontact(customuser,contact);
		}
		    else{
		    	userservice.updatecontact(customuser,contact);
		    }
		    return model;
			}
	@RequestMapping(value = "/viewpassport", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView viewpassport() {
		ModelAndView model = new ModelAndView();
		 Passport passport = new Passport();
		 HashMap<String,List<Document>> documents=userservice.findparticulardocuments(id);
         try {
			passport = userservice.findpassport(id);
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
		model.setViewName("admin/ViewPassport");
         }
        return model;
        
	}
	/*create a new application or edit existing contact details based on the changes made by the user*/
	@RequestMapping(value = "/editorcreatenewpassport", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewpassport(@ModelAttribute("passport") Passport passport) {
		ModelAndView model = new ModelAndView("admin/PassportInfo");
		HashMap<String,List<Document>> documents=userservice.findparticulardocuments(id);
		 System.out.println("The passport id is"+passport.getUserid());
         try {
			passport = userservice.findpassport(id);
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
		CustomUser customuser = userservice.findCustomUser(id);
		if(passport.getUserid() == 0){
		    
		    userservice.savepassport(customuser,passport);
		}
		    else{
		    	userservice.updatepassport(customuser,passport);
		    }
		    return model;
			}
	@RequestMapping(value = "/traveldetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView traveldetails() {
		ModelAndView model = new ModelAndView();
//		 CustomUser user = getCustomUser();
         List<Travel> traveldetails;
		try {
			traveldetails = userservice.findtraveldetails(id);
			model.addObject("traveldetails", traveldetails);
		} catch (FindTravelDetailsNotFoundService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
		model.setViewName("admin/TravelInfo");
		
        return model;
        
	}
	@RequestMapping(value = "/editorcreatenewtravel", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewtravel(@ModelAttribute("travel") Travel travel,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/TravelForm");
//		 CustomUser user = getCustomUser();
		 if(request == null){
        	 /*If Entering First Time new Applicant Object is sent as a Object as a model to the view Page*/
        	 model.addObject(new Travel());
         }
         else{
        /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
//        	 int travelid = Integer.parseInt(request.getParameter("travelid"));
        	 try {
				travel = userservice.findtravel(2);
			} catch (FindTravelByIdNotFoundService e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	 model.addObject("travel", new Travel());
         }
        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatetravel", method = RequestMethod.POST)
	public ModelAndView saveorupdatetravel(@ModelAttribute("travel") Travel travel) {
		ModelAndView model = new ModelAndView("redirect:traveldetails");
		CustomUser customuser = userservice.findCustomUser(id);
		if(travel.getTravelid() == 0){
		    
		    userservice.savetravel(customuser,travel);
		}
		    else{
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
		ModelAndView model = new ModelAndView("admin/TravelForm");
		System.out.println("The TravelId for edit travel is"+travelid);
		Travel travel;
		try {
			travel = userservice.findtravel(travelid);
			model.addObject("travel",travel);
		} catch (FindTravelByIdNotFoundService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("The Travel Id is "+travelid);
		    return model;
			}
	@RequestMapping(value = "/educationdetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView educationdetails() {
		ModelAndView model = new ModelAndView();
         List<Education> educationdetails = userservice.findqualifications(id);
         if(educationdetails.isEmpty()){
        	 /*If Entering First Time redirects to empty form with travel form*/
        	 model.setViewName("redirect:editorcreateneweducation");
         }
         else{
        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
		model.setViewName("admin/EducationDetails");
		System.out.println("The size is"+educationdetails.size());
		model.addObject("educationdetails", educationdetails);
         }
        return model;
        
	}
	@RequestMapping(value = "/editorcreateneweducation", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreateneweducation(@ModelAttribute("education") Education education,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/EducationForm");
        /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
//        	 int travelid = Integer.parseInt(request.getParameter("travelid"));
        	 model.addObject("education", new Education());
         
        return model;
        
	}
	@RequestMapping(value = "/saveorupdateeducation", method = RequestMethod.POST)
	public ModelAndView saveorupdateeducation(@ModelAttribute("education") Education education) {
		ModelAndView model = new ModelAndView("redirect:educationdetails");
//		CustomUser user = getCustomUser();
		CustomUser customuser = userservice.findCustomUser(id);
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
		ModelAndView model = new ModelAndView("admin/EducationForm");
		System.out.println("The TravelId for edit travel is"+eduid);
		Education education;
		try {
			education = userservice.findeducation(eduid);
			model.addObject("education",education);
		} catch (EducationNotFoundExceptionService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("The Travel Id is "+eduid);
		    return model;
			}
	@RequestMapping(value = "/experiencedetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView experiencedetails() {
		ModelAndView model = new ModelAndView();
//		 CustomUser user = getCustomUser();
         List<Experience> experiencedetails;
		try {
			experiencedetails = userservice.findexperiences(id);
			 if(experiencedetails.isEmpty()){
	        	 /*If Entering First Time redirects to empty form with travel form*/
	        	 model.setViewName("redirect:editorcreatenewexperience");
	         }
	         else{
	        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
			model.setViewName("admin/ExperienceHistory");
			model.addObject("experiencedetails", experiencedetails);
	         }
		} catch (experiencesnotfoundbyid e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        return model;
        
	}
	@RequestMapping(value = "/editorcreatenewexperience", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewexperience(@ModelAttribute("experience") Experience experience,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/ExperienceForm");
		
        /*If applicant wants to edit already present information then existing appli cant object is taken from the database and sent back to view*/
//        	 int travelid = Integer.parseInt(request.getParameter("travelid"));
        	 model.addObject("experience", new Experience());
        return model;
        
	}
	@RequestMapping(value = "/saveorupdateexperience", method = RequestMethod.POST)
	public ModelAndView saveorupdateexperience(@ModelAttribute("experience") Experience experience) {
		ModelAndView model = new ModelAndView("redirect:experiencedetails");
//		CustomUser user = getCustomUser();
		 CustomUser customuser = userservice.findCustomUser(id);
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
		ModelAndView model = new ModelAndView("admin/ExperienceForm");
		Experience experience;
		try {
			experience = userservice.findexperience(expid);
			model.addObject("experience",experience);
		} catch (ExperienceNotFoundService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		    return model;
			}
	@RequestMapping(value = "/certificateDetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView certificateDetails() {
		ModelAndView model = new ModelAndView();
//		 CustomUser user = getCustomUser();
         List<Certification> certificationdetails = null;
		try {
			certificationdetails = userservice.findcertificationdetails(id);
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
		model.setViewName("admin/CertificationDetails");
		model.addObject("certificationdetails", certificationdetails);
         }
        return model;
        
	}
	
	//if the user wants to create or edit certification which exists
	
	@RequestMapping(value = "/editorcreatenewcertificate", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewtravel(@ModelAttribute("certification") Certification certification,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/CertificateForm");
//		 CustomUser user = getCustomUser();
		 
        /*If applicant wants to edit already present information then existing applicant object is taken from the database and sent back to view*/
//        	 int travelid = Integer.parseInt(request.getParameter("travelid"));
        	 model.addObject("certification", new Certification());
        return model;
        
	}
	
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatecertification", method = RequestMethod.POST)
	public ModelAndView saveorupdatetravel(@ModelAttribute("certification") Certification certification) {
		ModelAndView model = new ModelAndView("redirect:certificateDetails");
		CustomUser customuser = userservice.findCustomUser(id);
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
		ModelAndView model = new ModelAndView("admin/CertificateForm");
		Certification certification = null;
		try {
			certification = userservice.findcertificate(certificationid);
		} catch (CertificateNotFoundService e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addObject("certification",certification);
		    return model;
			}
	
	@RequestMapping(value = "/editorcreatenewdocument",method = RequestMethod.GET)
	public ModelAndView editorcreatenewdocument(@ModelAttribute("fileBucket") FileBucket filebucket){
	
	ModelAndView model = new ModelAndView("admin/DocumentForm");
	model.addObject("filebucket", new FileBucket());
	
	return model;
	
		
	}
	@RequestMapping(value = "/uploaddocument",method = RequestMethod.POST)
	public ModelAndView uploaddocument(@ModelAttribute("fileBucket") FileBucket fileBucket, HttpServletRequest request){
//	CustomUser customuser = getCustomUser();
  CustomUser customuser = userservice.findCustomUser(id);
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
     System.out.println("The Docid in delete doc controller "+docid);
     userservice.deletedoc(docid);
     System.out.println("The document id is "+docid);
	 ModelAndView model = new ModelAndView("redirect:applicantdocument");
	 return model;
	
	}
	@RequestMapping(value = "/applicantdocument",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView applicantdocument(@ModelAttribute("filebucket") FileBucket filebucket) throws IOException{
     ModelAndView model = new ModelAndView();
     HashMap<String,List<Document>> documents = new HashMap<String,List<Document>>();
     documents = userservice.findparticulardocuments(id);
     System.out.println("The Size Of Document is"+documents.size());
        if(documents.isEmpty()){
        	model.setViewName("admin/DocumentForm");
        	model.addObject("filebucket", new FileBucket());
        }else{
        	model.addObject("documents",documents);
        	model.setViewName("admin/DocumentDetails");
        }
		
     return model;
	}
	@RequestMapping(value = "/addnewattorney", method = RequestMethod.GET)
	public ModelAndView addnewattorney() {
		ModelAndView model = new ModelAndView("admin/NewAttorneyForm");
		model.addObject("attorney", new Attorney());
		 return model;
	}
	@RequestMapping(value = "/viewattorney", method = RequestMethod.GET)
	public ModelAndView viewmember(HttpServletRequest request) {
		int attorneyid;
		attorneyid=  Integer.parseInt(request.getParameter("attorneyid"));
		Attorney attorney = userservice.findattorneybyattorneyid(attorneyid);
		ModelAndView model = new ModelAndView("admin/ViewAttorney");
		model.addObject("attorney", attorney);
		 return model;
	}
	@RequestMapping(value = "/editattorney", method = RequestMethod.GET)
	public ModelAndView editattorney(@ModelAttribute("attorney") Attorney attorney , HttpServletRequest request) {
		int attorneyid;
		attorneyid=  Integer.parseInt(request.getParameter("attorneyid"));
		attorney = userservice.findattorneybyattorneyid(attorneyid);
		ModelAndView model = new ModelAndView("admin/NewAttorneyForm");
		model.addObject("attorney", attorney);
		 return model;
	}
	
	@RequestMapping(value = "/saveorupdatenewattorney", method = RequestMethod.POST)
	public ModelAndView addnewmember(@ModelAttribute("attorney") Attorney attorney) {
		ModelAndView model = new ModelAndView("redirect:home");
		if(attorney.getAttorneyid() == 0){
	     userservice.saveattorney(attorney);
		}else{
			userservice.updateattorney(attorney);
		}
		 return model;
	}
	@RequestMapping(value = "/deleteattorney", method = RequestMethod.POST)
	public ModelAndView deleteattorney(@ModelAttribute("attorneyid") int attorneyid) {
		ModelAndView model = new ModelAndView("redirect:home");
		userservice.deleteattorney(attorneyid);
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