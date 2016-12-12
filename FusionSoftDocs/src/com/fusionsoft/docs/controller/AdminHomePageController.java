package com.fusionsoft.docs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.Applicant;
import com.fusionsoft.docs.model.Contact;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Email;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.FileBucket;
import com.fusionsoft.docs.model.Passport;
import com.fusionsoft.docs.model.Travel;
import com.fusionsoft.docs.service.UserService;

@Controller
@RequestMapping(value = { "/admin" })
public class AdminHomePageController {
	@Autowired
	public UserDao userDao;
	private static int id = 10;

	@Autowired
	private UserService userservice;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request) {

		ModelAndView model = new ModelAndView("admin/home");

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser logedinUser = null;
		if (principal instanceof CustomUser) {
			logedinUser = ((CustomUser) principal);
		}
		
		System.out.println("the logged user is" + logedinUser.getUsername());
		model.addObject("userFullName", logedinUser.getUsername());
		System.out.println("the end");

		return model;
	}
	@RequestMapping(value = "/applicants", method = RequestMethod.GET)
	public ModelAndView applicants(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/applicants");
      	List<Applicant> applicants = userservice.findallapplicants();
      	model.addObject("applicants", applicants);
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
	public ModelAndView savenewapplicant(@ModelAttribute("username") String username,  HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		String emailmessage;
		String password = userservice.saveapplicant(username);
		 emailmessage = "FusionSoft has Created a new Profile \n\n The Credentials are as follows\n"+"Username:"+username+"\nPassword:"+password;
			model.setViewName("redirect:applicants");
		Email email = new Email(username,emailmessage);
		try{
			userservice.emailapplicant(email);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		   return model;
	}
	@RequestMapping(value = "/editorcreatenewapplication", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewapplication(@ModelAttribute("applicant") Applicant applicant,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/ApplicationInfo");
//		 CustomUser user = getCustomUser();
         applicant = userservice.findapplicant(10);
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
	/*Saving Or Updating The Changes Made By Applicant*/
	@RequestMapping(value = "/saveorupdateapplication", method = RequestMethod.POST)
	public ModelAndView saveorupdateapplication(@ModelAttribute("applicant") Applicant applicant) {
		ModelAndView model = new ModelAndView("redirect:editorcreatenewcontact");
//		CustomUser user = getCustomUser();
		if(applicant.getUserid() == 0){
		    CustomUser customuser = userservice.findCustomUser(id);
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
		ModelAndView model = new ModelAndView("admin/ContactInfo");
//		 CustomUser user = getCustomUser();
         contact = userservice.findcontact(id);
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
//		CustomUser user = getCustomUser();
		if(contact.getUserid() == 0){
		    CustomUser customuser = userservice.findCustomUser(id);
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
		ModelAndView model = new ModelAndView("admin/PassportInfo");
//		 CustomUser user = getCustomUser();
		 System.out.println("The passport id is"+passport.getUserid());
         passport = userservice.findpassport(id);
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
//		CustomUser user = getCustomUser();
		if(passport.getUserid() == 0){
		    CustomUser customuser = userservice.findCustomUser(id);
		    userservice.savepassport(customuser,passport);
		}
		    else{
		    	userservice.updatepassport(passport);
		    }
		    return model;
			}
	@RequestMapping(value = "/traveldetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView traveldetails() {
		ModelAndView model = new ModelAndView();
//		 CustomUser user = getCustomUser();
         List<Travel> traveldetails = userservice.findtraveldetails(id);
       
        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
		model.setViewName("admin/TravelInfo");
		model.addObject("traveldetails", traveldetails);
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
        	 travel = userservice.findtravel(2);
        	 model.addObject("travel", new Travel());
         }
        return model;
        
	}
	/*Saving Or Updating The Changes Made By Applicant To Contact Details*/
	@RequestMapping(value = "/saveorupdatetravel", method = RequestMethod.POST)
	public ModelAndView saveorupdatetravel(@ModelAttribute("travel") Travel travel) {
		ModelAndView model = new ModelAndView("redirect:traveldetails");
//		CustomUser user = getCustomUser();
		if(travel.getTravelid() == 0){
		    CustomUser customuser = userservice.findCustomUser(id);
		    userservice.savetravel(customuser,travel);
		}
		    else{
		    	userservice.updatetravel(travel);
		    }
		    return model;
			}
	@RequestMapping(value = "/educationdetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView educationdetails() {
		ModelAndView model = new ModelAndView();
//		 CustomUser user = getCustomUser();
         List<Education> educationdetails = userservice.findqualifications(id);
         if(educationdetails.isEmpty()){
        	 /*If Entering First Time redirects to empty form with travel form*/
        	 model.setViewName("redirect:editorcreateneweducation");
         }
         else{
        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
		model.setViewName("user/EducationInfo");
		System.out.println("The size is"+educationdetails.size());
		model.addObject("educationdetails", educationdetails);
         }
        return model;
        
	}
	@RequestMapping(value = "/editorcreateneweducation", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreateneweducation(@ModelAttribute("education") Education education,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("user/EducationForm");
//		 CustomUser user = getCustomUser();
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
		ModelAndView model = new ModelAndView("redirect:experiencedetails");
//		CustomUser user = getCustomUser();
		if(education.getEduid() == 0){
		    CustomUser customuser = userservice.findCustomUser(id);
		    userservice.saveeducation(customuser, education);
		}
		    else{
		    	userservice.updateeducation(education);
		    }
		    return model;
			}
	
	
	@RequestMapping(value = "/addnewdocument",method = RequestMethod.GET)
	public ModelAndView addnewdocument(@ModelAttribute("fileBucket") FileBucket filebucket){
	ModelAndView model = new ModelAndView("admin/DocumentsForm");
	model.addObject("fileBucket", new FileBucket());
	model.addObject("userid", id);
	return model;
	
		
	}
//	@RequestMapping(value = "/uploaddocument",method = RequestMethod.POST)
//	public ModelAndView uploaddocument(@ModelAttribute("fileBucket") FileBucket fileBucket, HttpServletRequest request){
//	int userid = Integer.parseInt(fileBucket.getUserid());
//	System.out.println("The userid is"+userid);
//	System.out.println("The doctype is"+fileBucket.getDoctype());
//	CustomUser customuser = userservice.findCustomUser(userid);
//	int docid = userservice.saveDocument(fileBucket,customuser);
//	System.out.println("The docid is"+docid);
//	System.out.println("The userid is"+fileBucket.getUserid());
//	ModelAndView model = new ModelAndView("redirect:applicantdocument");
//	return model;
//	
//		
//	}
	@RequestMapping(value = "/deleteDoc",method = RequestMethod.GET)
	public ModelAndView deleteDoc(@ModelAttribute("docid") int docid,HttpServletResponse response, HttpServletRequest request,RedirectAttributes redirectAttributes) throws IOException{
     int userid = userservice.finduseridbydocid(docid);
     userservice.deletedoc(docid);
     System.out.println("The document id is "+docid);
	 redirectAttributes.addFlashAttribute("userid",userid);
	 ModelAndView model = new ModelAndView("redirect:applicantdocument");
	 return model;
	
	}
	@RequestMapping(value = "/applicantqualification",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView applicantqualification() throws IOException{
     ModelAndView model = new ModelAndView("admin/ApplicantQualifications");
     List<Education> educationqualifications = userservice.findqualifications(id);
     model.addObject("educationalqualifications", educationqualifications);
	 return model;
	}
	@RequestMapping(value = "/downloadDoc", method = RequestMethod.GET)
	public void downloadDoc(HttpServletRequest request,HttpServletResponse response) throws IOException {
		int docid = Integer.parseInt(request.getParameter("docid"));
		Document document =  userDao.finddocument(docid);
		response.setContentType("text/html");
        response.setContentLength(document.getAttachment().length);
        response.setHeader("Content-Disposition","attachment; filename=\"" + document.getDoctitle() +"\"");
        FileCopyUtils.copy(document.getAttachment(), response.getOutputStream());
        response.flushBuffer();
       }
	@RequestMapping(value = "/applicantexperience",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView applicantexperience() throws IOException{
	 List<Experience> experiences = userservice.findexperiences(id);
	 System.out.println("The size of the backend list of experiences is"+experiences.size());
     ModelAndView model = new ModelAndView("admin/ApplicantExperience");
     model.addObject("experiences",experiences);
	 return model;
	}
	@RequestMapping(value = "/addexperience",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addexperience() throws IOException{
     ModelAndView model = new ModelAndView("admin/experienceform");
	 return model;
	}
//	@RequestMapping(value = "/saveexperience",method = RequestMethod.POST)
//	public ModelAndView saveexperience(@ModelAttribute("experience")Experience experience,BindingResult result) throws IOException{
//		 Profile profile = userservice.findprofile(id);
//		 userservice.saveexperience(profile,experience);
//		 System.out.println("The experience date is"+experience.getJoineddate());
//
//     ModelAndView model = new ModelAndView("redirect:applicantexperience");
//	 return model;
//	}
	@RequestMapping(value = "/addeducation",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addeducation(@ModelAttribute("experience")Experience experience) throws IOException{
       ModelAndView model = new ModelAndView("admin/qualificationsform");
	 return model;
	}
//	@RequestMapping(value = "/saveeducation",method = RequestMethod.POST)
//	public ModelAndView saveeducation(@ModelAttribute("education")Education education,BindingResult result) throws IOException{
//		 Profile profile = userservice.findprofile(id);
//		 userservice.saveeducation(profile,education);
//    ModelAndView model = new ModelAndView("redirect:applicantqualification");
//	 return model;
//	}
	@RequestMapping(value = "/applicantDeleteexperience",method = RequestMethod.GET)
	public ModelAndView applicantDeleteexperience(HttpServletRequest request){
	int expid = Integer.parseInt(request.getParameter("expid"));
	userservice.deleteexperience(expid);
    ModelAndView model = new ModelAndView("redirect:applicantexperience");
    
    return model;
	}
	@RequestMapping(value = "/applicantDeleteeducation",method = RequestMethod.GET)
	public ModelAndView applicantDeleteeducation(HttpServletRequest request){
	int eduid = Integer.parseInt(request.getParameter("eduid"));
	userservice.deleteeducation(eduid);
    ModelAndView model = new ModelAndView("redirect:applicantqualification");
    
    return model;
	}

}