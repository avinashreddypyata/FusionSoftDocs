package com.fusionsoft.docs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
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
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.Passport;
import com.fusionsoft.docs.model.Travel;
import com.fusionsoft.docs.service.CertificateDetailsNotFound;
import com.fusionsoft.docs.service.FindTravelDetailsNotFoundService;
import com.fusionsoft.docs.service.PassportNotFoundInService;
import com.fusionsoft.docs.service.UserService;
import com.fusionsoft.docs.service.applicantnotfoundservice;
import com.fusionsoft.docs.service.contactnotfoundservice;
import com.fusionsoft.docs.service.experiencesnotfoundbyid;

public class VerifiedApplicantController {
	@Controller
	@RequestMapping(value = { "/verifiedapplicant" })
	public class AttorneyHomePageController {
		@Autowired
		public UserDao userDao;
		@Autowired
		private UserService userservice;
		@RequestMapping(value = "/home", method = RequestMethod.GET)
		public ModelAndView homePage(HttpServletRequest request) {

			ModelAndView model = new ModelAndView("verifiedapplicant/home");
			
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			CustomUser user = null;
			if (principal instanceof CustomUser) {
				user = ((CustomUser) principal);
			}
			Applicant applicant = null;
			try {
				applicant = userservice.findapplicant(user.getUserid());
			} catch (applicantnotfoundservice e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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
		    documents = userservice.findalldocuments(user.getUserid());
			model.addObject("documents",documents);
			List<Certification> certificationdetails = null;
			try {
				certificationdetails = userservice.findcertificationdetails(user.getUserid());
			} catch (CertificateDetailsNotFound e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addObject("certificationdetails",certificationdetails);
		return model;
		}
	}
}
