package com.fusionsoft.docs.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.Applicant;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.service.UserService;
import com.fusionsoft.docs.service.applicantnotfoundservice;
@Controller
@RequestMapping(value = { "/attorney" })
public class AttorneyHomePageController {
	@Autowired
	public UserDao userDao;
	private static int applicantid;
	@Autowired
	private UserService userservice;
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request) {

		ModelAndView model = new ModelAndView("attorney/home");
        
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser logedinUser = null;
		if (principal instanceof CustomUser) {
			logedinUser = ((CustomUser) principal);
		}
		List<Applicant> submittedusers = userservice.findallapplicantsbyattorneyid(logedinUser.getAttorney().getAttorneyid());
		System.out.println("The List Size of submittedusers is " + submittedusers.size());
		model.addObject("applicants", submittedusers);
		return model;
	}
	@RequestMapping(value = "/applicant", method = RequestMethod.POST)
	public ModelAndView setapplicantid(@ModelAttribute("userid") int userid) {
		ModelAndView model = new ModelAndView();
		
		applicantid = userid;
		model.setViewName("redirect:viewapplicant");
		return model;
	}
	@RequestMapping(value = "/viewapplicant", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView viewapplication() {
		ModelAndView model = new ModelAndView();
		Applicant applicant = new Applicant();
		List<Document> documents = userservice.finddocuments(applicantid, "Other");
		try {
			applicant = userservice.findapplicant(applicantid);
		} catch (applicantnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

			/*
			 * If applicant wants to edit already present information then
			 * existing applicant object is taken from the database and sent
			 * back to view
			 */
			model.addObject("applicant", applicant);
			model.addObject("documents", documents);
			model.setViewName("attorney/ViewApplication");
		return model;
	}
}