package com.fusionsoft.docs.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Email;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.FileBucket;
import com.fusionsoft.docs.model.Immigration;
import com.fusionsoft.docs.model.Profile;
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
      	List<Profile> profiles = userservice.findalluserprofiles();
      	model.addObject("applicants", profiles);
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
	@RequestMapping(value = "/applicantViewInfo", method = RequestMethod.GET)
	public ModelAndView applicantViewInfo(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/applicantViewInfo");
		HashMap<String,List> documents = new HashMap<String,List>();
        Profile profile = new Profile();
		String userid = request.getParameter("userid");
		if(userid != null){
			 id = Integer.parseInt(userid);
		}
		System.out.println("The user id dshfkdjshfkjdsfj is "+id);
		profile = userservice.findprofile(id);
		documents = userservice.findparticulardocuments(id);
	    model.addObject("profile", profile);
        return model;
	}

	@RequestMapping(value = "/applicantEditProfile", method = RequestMethod.GET)
	public ModelAndView applicantEditProfile(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("admin/applicantEditProfile");
        Profile profile = new Profile();
        if(request.getParameter("userid") == null){
        	model.addObject("profile", profile);
            return model;
        }
        else{
		System.out.println("The id is" + request.getParameter("userid"));
		int userid = Integer.parseInt(request.getParameter("userid"));
		profile = userservice.findprofile(userid);
		model.addObject("profile", profile);
        return model;
        }
	}

	@RequestMapping(value = "/applicantDeleteProfile", method = RequestMethod.GET)
	public ModelAndView employeeoverview(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("redirect:applicants");
		System.out.println("The id is" + request.getParameter("userid"));
		int userid = Integer.parseInt(request.getParameter("userid"));
		userservice.deleteprofile(userid);
        return model;
	}
	
	@RequestMapping(value = "/applicantSaveProfile", method = RequestMethod.POST)
	public ModelAndView applicantSaveProfile(@ModelAttribute("profile") Profile profile,  HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		Map<Integer,String> useridpassword = new HashMap<Integer, String>();
		String emailmessage;
		System.out.println("The name is"+profile.getFirstname());
		System.out.println("The Last Name is"+profile.getLastname());
		if(profile.getUserid() == 0){
			useridpassword = userservice.saveProfile(profile);
			Map.Entry<Integer,String> entry=useridpassword.entrySet().iterator().next();
			 Integer userid= entry.getKey();
			 String password=entry.getValue();
		 emailmessage = "FusionSoft has Created a new Profile \n\n The Credentials are as follows\n"+"Username:"+profile.getEmail()+"\nPassword:"+password;
			model.setViewName("redirect:applicantEditProfile?userid="+userid);
		}else{
		model.setViewName("redirect:applicantEditProfile?userid="+profile.getUserid());
		userservice.updateprofile(profile,profile.getUserid());
	     emailmessage ="Your Profile is Updated By The Admin Kindly check them";
		}
		Email email = new Email(profile.getEmail(),emailmessage);
		try{
			userservice.emailapplicant(email);
		}catch (Exception e) {
			e.printStackTrace();
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
	@RequestMapping(value = "/uploaddocument",method = RequestMethod.POST)
	public ModelAndView uploaddocument(@ModelAttribute("fileBucket") FileBucket fileBucket, HttpServletRequest request){
	int userid = Integer.parseInt(fileBucket.getUserid());
	System.out.println("The userid is"+userid);
	System.out.println("The doctype is"+fileBucket.getDoctype());
	CustomUser customuser = userservice.findCustomUser(userid);
	int docid = userservice.saveDocument(fileBucket,customuser);
	System.out.println("The docid is"+docid);
	System.out.println("The userid is"+fileBucket.getUserid());
	ModelAndView model = new ModelAndView("redirect:applicantdocument");
	return model;
	
		
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
	@RequestMapping(value = "/applicantqualification",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView applicantqualification() throws IOException{
     ModelAndView model = new ModelAndView("admin/ApplicantQualifications");
     List<Education> educationqualifications = userservice.findqualifications(id);
     model.addObject("educationalqualifications", educationqualifications);
	 return model;
	}
	@RequestMapping(value = "/applicantdocument",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView applicantdocument() throws IOException{
     ModelAndView model = new ModelAndView("admin/ApplicantDocuments");
     HashMap<String,List> documents = new HashMap<String,List>();
     Profile profile = new Profile();
		profile = userservice.findprofile(id);
		documents = userservice.findparticulardocuments(id);
	    model.addObject("profile", profile);
		model.addObject("documents",documents);
		model.addObject("fileBucket",new FileBucket());
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
	@RequestMapping(value = "/applicantimmigration",method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView applicantimmigration(@ModelAttribute("immigration")Immigration immigration) throws IOException{
    ModelAndView model = new ModelAndView("admin/ApplicantImmigrationInfo");
    Immigration applicantimmigration = new Immigration();
    applicantimmigration = userservice.findimmigration(id);
    if(applicantimmigration == null){
    	model.addObject("immigration", new Immigration());
    }else{
    	model.addObject("immigration",applicantimmigration);
    }
    
	 return model;
	}
	@InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
     SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
     dateFormat.setLenient(false);
     webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
     }
	@RequestMapping(value = "/saveimmigration",method = RequestMethod.POST)
	public ModelAndView saveimmigration(@ModelAttribute("immigration")Immigration immigration, BindingResult result) throws IOException{
    ModelAndView model = new ModelAndView("redirect:applicantimmigration");
    if(immigration.getUserid() == 0){
    Profile profile = userservice.findprofile(id);
    userservice.saveimmigration(profile, immigration);
    }else{
    	userservice.updateimmigration(immigration);
    }
    return model;
	}
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