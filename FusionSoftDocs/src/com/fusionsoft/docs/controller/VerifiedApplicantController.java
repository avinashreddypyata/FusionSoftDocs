package com.fusionsoft.docs.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
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
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.Passport;
import com.fusionsoft.docs.model.Travel;
import com.fusionsoft.docs.service.CertificateDetailsNotFound;
import com.fusionsoft.docs.service.FindTravelDetailsNotFoundService;
import com.fusionsoft.docs.service.PassportNotFoundInService;
import com.fusionsoft.docs.service.UserService;
import com.fusionsoft.docs.service.applicantnotfoundservice;
import com.fusionsoft.docs.service.contactnotfoundservice;
import com.fusionsoft.docs.service.documentnotfoundservice;
import com.fusionsoft.docs.service.experiencesnotfoundbyid;
@Controller
@RequestMapping(value = { "/verifiedapplicant" })
public class VerifiedApplicantController {
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
		@RequestMapping(value = "/downloadDoc",method = RequestMethod.GET)
		public void downloaddocument(HttpServletRequest request, HttpServletResponse response) throws IOException{
		int docid = Integer.parseInt(request.getParameter("docid"));
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
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null) {
				new SecurityContextLogoutHandler().logout(request, response, auth);
			}
			return "redirect:/login";// You can redirect wherever you want, but
										// generally it's a good practice to show
										// login screen again.
		}
	}
