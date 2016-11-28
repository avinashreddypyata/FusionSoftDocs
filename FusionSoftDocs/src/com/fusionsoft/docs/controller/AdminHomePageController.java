package com.fusionsoft.docs.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Email;
import com.fusionsoft.docs.model.Profile;
import com.fusionsoft.docs.service.UserService;

@Controller
@RequestMapping(value = { "/admin" })
public class AdminHomePageController {
	@Autowired
	public UserDao userDao;

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
		String id = request.getParameter("userid");
		int userid = Integer.parseInt(id);
		System.out.println("The user id dshfkdjshfkjdsfj is "+id);
		profile = userservice.findprofile(userid);
		documents = userservice.findparticulardocuments(userid);
	    model.addObject("profile", profile);
		model.addObject("documents",documents);
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

}