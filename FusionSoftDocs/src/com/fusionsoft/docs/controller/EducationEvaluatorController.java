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
import com.fusionsoft.docs.model.FileBucket;
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
@RequestMapping(value = { "/educationevaluator" })
public class EducationEvaluatorController {
	@Autowired
	public UserDao userDao;
	private static int applicantid;
	@Autowired
	private UserService userservice;
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request) {

		ModelAndView model = new ModelAndView("attorney/home");
		List<Applicant> submittedusers;
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser logedinUser = null;
		if (principal instanceof CustomUser) {
			logedinUser = ((CustomUser) principal);
		}
		
			submittedusers = userservice.findallapplicantsbyeducationevaluationid(logedinUser.getEducationevaluation().getEducationevaluationid());
		model.addObject("applicants", submittedusers);
		return model;
	}
	@RequestMapping(value = "/viewapplication", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView viewapplicant(@ModelAttribute("userid") int userid) {
		applicantid = userid;
		ModelAndView model = new ModelAndView();
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
			System.out.println("The Applicant Full Name is "+applicant.getFullname());
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
			model.setViewName("educationevaluator/ViewApplication");
		return model;
	}
	@RequestMapping(value = "/viewcontact", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView viewcontact() {
		ModelAndView model = new ModelAndView();
		Contact contact = new Contact();
		List<Document> documents = userservice.finddocuments(applicantid, "Contact");
		try {
			contact = userservice.findcontact(applicantid);
		} catch (contactnotfoundservice e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
			model.addObject("contact", contact);
			model.addObject("documents", documents);
			model.setViewName("educationevaluator/ViewContact");
		return model;

	}
	
	@RequestMapping(value = "/educationdetails", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView educationdetails() {
		ModelAndView model = new ModelAndView();
		List<Education> educationdetails = userservice.findqualifications(applicantid);
		
			/*
			 * If applicant had already entered atleast one entry sent back to
			 * view with Travel History Table in it and list is sent as a model
			 * object
			 */
			model.setViewName("educationevaluator/EducationDetails");
			System.out.println("The size is" + educationdetails.size());
			model.addObject("educationdetails", educationdetails);
		return model;

	}
	
	@RequestMapping(value = "/certificateDetails", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView certificateDetails() {
		ModelAndView model = new ModelAndView();
		// CustomUser user = getCustomUser();
		List<Certification> certificationdetails = null;
		try {
			certificationdetails = userservice.findcertificationdetails(applicantid);
		} catch (CertificateDetailsNotFound e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			/*
			 * If applicant had already entered atleast one entry sent back to
			 * view with Travel History Table in it and list is sent as a model
			 * object
			 */
			model.setViewName("educationevaluator/CertificationDetails");
			model.addObject("certificationdetails", certificationdetails);
		return model;

	}
	@RequestMapping(value = "/applicantdocument", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView applicantdocument(@ModelAttribute("filebucket") FileBucket filebucket) throws IOException {
		ModelAndView model = new ModelAndView();
		List<Document> documents = new ArrayList<Document>();
		documents = userservice.findalldocuments(applicantid);
		System.out.println("The Size Of Document is" + documents.size());
		model.addObject("documents", documents);
		model.setViewName("educationevaluator/DocumentDetails");

		return model;
	}
	@RequestMapping(value = "/downloadDoc", method = RequestMethod.POST)
	public void downloaddocument(@ModelAttribute("docid") int docid, HttpServletResponse response) throws IOException {
		System.out.println("The Docid is" + docid);

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
		response.setHeader("Content-Disposition", "attachment; filename=\"" + document.getDoctitle() + "\"");
		ServletOutputStream os = response.getOutputStream();
		byte[] bufferData = new byte[1024];
		int read = 0;
		while ((read = fileInputStream.read(bufferData)) != -1) {
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