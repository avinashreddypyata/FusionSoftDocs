package com.fusionsoft.docs.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.Applicant;
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
import com.fusionsoft.docs.service.UserService;

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
      	List<CustomUser> customusers = userservice.findallcustomusers();
      	List<CustomUser> notsubmittedusers = new ArrayList<CustomUser>();
      	List<CustomUser> submittedusers = new ArrayList<CustomUser>();
      	customusers.forEach(customuser->{
      		if(customuser.isSubmission() == false){
      			notsubmittedusers.add(customuser);
      		}else{
      			submittedusers.add(customuser);
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
		ModelAndView model = new ModelAndView();
            Passport passport=userservice.findpassport(id);
			model.addObject(passport);
			Contact contact=userservice.findcontact(id);
			model.addObject(contact);
			Applicant applicant=userservice.findapplicant(id);
			model.addObject(applicant);
			List<Travel> traveldetails=userservice.findtraveldetails(id);
			model.addObject("traveldetails",traveldetails);
			System.out.println(traveldetails.size());
			List<Experience> experiencedetails=userservice.findexperiences(id);
			model.addObject("experiencedetails",experiencedetails);
			System.out.println(experiencedetails.size());
			List<Education> educationdetails=userservice.findqualifications(id);
			model.addObject("educationdetails",educationdetails);
			HashMap<String,List<Document>> documents=userservice.findparticulardocuments(id);
			model.addObject("documents",documents);
			List<Certification> certificationdetails=userservice.findcertificationdetails(id);
			model.addObject("certificationdetails",certificationdetails);
			CustomUser customuser = userservice.findCustomUser(id);
			model.addObject("applicationstatus", customuser.getApplicationstatus());
	    model.setViewName("admin/Overview");
		return model;
	}
	@RequestMapping(value =  "/assigntoattorney" , method = RequestMethod.POST)
	public ModelAndView assigntoattorny(@ModelAttribute("userid") int userid) {
		ModelAndView model = new ModelAndView();
		    userservice.updatecustomuserapplicationstatus(userid, "Assigned To Attorney");
            model.setViewName("redirect:overview");
		return model;
	}
	@RequestMapping(value =  "/assigntoeducationevaluation" , method = RequestMethod.POST)
	public ModelAndView assigntoeducationevaluation(@ModelAttribute("userid") int userid) {
		ModelAndView model = new ModelAndView();
		    userservice.updatecustomuserapplicationstatus(userid, "Assigned To EducationEvaluation");
            model.setViewName("redirect:overview");
		return model;
	}
	@InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
     SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
     dateFormat.setLenient(false);
     webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
     }
	@RequestMapping(value = "/editorcreatenewapplication", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewapplication(@ModelAttribute("applicant") Applicant applicant,HttpServletRequest request, BindingResult result) {
		ModelAndView model = new ModelAndView("admin/ApplicationInfo");
//		 CustomUser user = getCustomUser();
         applicant = userservice.findapplicant(id);
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
	public ModelAndView saveorupdateapplication(@ModelAttribute("applicant") Applicant applicant, BindingResult result) {
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
	public ModelAndView editorcreatenewcontact(@ModelAttribute("contact") Contact contact, BindingResult result) {
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
		Travel travel = userservice.findtravel(travelid);
		model.addObject("travel",travel);
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
		if(education.getEduid() == 0){
		    CustomUser customuser = userservice.findCustomUser(id);
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
//		 CustomUser user = getCustomUser();
         List<Experience> experiencedetails = userservice.findexperiences(id);
         if(experiencedetails.isEmpty()){
        	 /*If Entering First Time redirects to empty form with travel form*/
        	 model.setViewName("redirect:editorcreatenewexperience");
         }
         else{
        	 /*If applicant had already entered atleast one entry sent back to view with Travel History Table in it and list is sent as a model object*/
		model.setViewName("admin/ExperienceHistory");
		model.addObject("experiencedetails", experiencedetails);
         }
        return model;
        
	}
	@RequestMapping(value = "/editorcreatenewexperience", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editorcreatenewexperience(@ModelAttribute("experience") Experience experience,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("user/ExperienceForm");
		
        /*If applicant wants to edit already present information then existing appli cant object is taken from the database and sent back to view*/
//        	 int travelid = Integer.parseInt(request.getParameter("travelid"));
        	 model.addObject("experience", new Experience());
        return model;
        
	}
	@RequestMapping(value = "/saveorupdateexperience", method = RequestMethod.POST)
	public ModelAndView saveorupdateexperience(@ModelAttribute("experience") Experience experience) {
		ModelAndView model = new ModelAndView("redirect:experiencedetails");
//		CustomUser user = getCustomUser();
		if(experience.getExpid() == 0){
		    CustomUser customuser = userservice.findCustomUser(id);
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
		ModelAndView model = new ModelAndView("admin/ExperienceForm");
		Experience experience = userservice.findexperience(expid);
		model.addObject("experience",experience);
		    return model;
			}
	@RequestMapping(value = "/certificateDetails", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView certificateDetails() {
		ModelAndView model = new ModelAndView();
//		 CustomUser user = getCustomUser();
         List<Certification> certificationdetails = userservice.findcertificationdetails(id);
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
//		CustomUser user = getCustomUser();
		if(certification.getCertificationId()== 0){
		    CustomUser customuser = userservice.findCustomUser(id);
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
	Document document =  userservice.finddocument(docid);
	response.setContentType(document.getDoctype());
	response.setContentLength(document.getAttachment().length);
	response.setHeader("Content-Disposition","attachment; filename=\"" + document.getDoctitle() +"\"");
	FileCopyUtils.copy(document.getAttachment(), response.getOutputStream());
	response.flushBuffer();
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
        	model.setViewName("user/DocumentForm");
        	model.addObject("filebucket", new FileBucket());
        }else{
        	model.addObject("documents",documents);
        	model.setViewName("admin/DocumentDetails");
        }
		
     return model;
	}
	
	}