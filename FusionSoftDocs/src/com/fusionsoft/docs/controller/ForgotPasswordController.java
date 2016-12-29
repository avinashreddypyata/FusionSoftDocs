package com.fusionsoft.docs.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Email;
import com.fusionsoft.docs.model.PasswordResetToken;
import com.fusionsoft.docs.service.PasswordNotFoundException;
import com.fusionsoft.docs.service.PasswordResetTokenNotFound;
import com.fusionsoft.docs.service.TokenNotFoundException;
import com.fusionsoft.docs.service.UserService;

@Controller
public class ForgotPasswordController {
	@Autowired
	private UserService userservice;
	@RequestMapping(value = { "/forgotPassword" }, method = RequestMethod.GET)
	public ModelAndView forgotPassword() {
		ModelAndView model = new ModelAndView();
		model.setViewName("forgotPassword");
		return model;
	}
	@RequestMapping(value = { "/resetPassword" }, method = RequestMethod.POST)
	public ModelAndView resetPassword(@ModelAttribute("email") String email, HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		CustomUser customuser = userservice.findCustomUserByEmail(email);
		System.out.println("The customuser id is"+customuser);
		if (customuser == null) {
	       model.setViewName("forgotPassword");
	       String notfound = "Enter The Correct User Name";
	       model.addObject("notfound",notfound);
	       return model;
	    }else{
		String token = UUID.randomUUID().toString();
		PasswordResetToken passwordresettoken = new PasswordResetToken();
		
		  if(customuser.getPasswordresettoken() == null){
			System.out.println("Creating Token");
			passwordresettoken.setToken(token);
		try {
			userservice.createPasswordResetTokenForUser(customuser, passwordresettoken);
		} catch (PasswordResetTokenNotFound e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		else{
			System.out.println("Updating");
			try {
				userservice.updatePasswordResetTokenForUser(customuser.getUserid(),token);
			} catch (TokenNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	    String emailmessage = 
	    	      "http://" + request.getServerName() + 
	    	      ":" + request.getServerPort() + 
	    	      request.getContextPath()+"/changePassword?id=" + customuser.getUserid() + "&token=" + token;
		System.out.println("The email is"+email);
		Email emailobject = new Email(email,emailmessage);
		userservice.emailapplicant(emailobject);
		model.setViewName("login");
		return model;
	    }
	}
	@RequestMapping(value = { "/changePassword" }, method = RequestMethod.GET)
	public String changePassword(@RequestParam("id") int id, @RequestParam("token") String token) {
		ModelAndView model = new ModelAndView();
		PasswordResetToken passwordresetToken = userservice.getPasswordResetToken(token);
		CustomUser customuser = userservice.findCustomUser(passwordresetToken.getUserid());
		if (passwordresetToken == null || customuser.getUserid() != id) {
			System.out.println("The customuser part");
	       return "redirect:/login";
	       
	    }
		Calendar cal = Calendar.getInstance();
		DateTimeFormatter formatfortokensentdate = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S");
		DateTimeFormatter formatfortokenrecieveddate = DateTimeFormatter.ofPattern("EEE MMM dd HH:mm:ss zzz yyyy");
		LocalDateTime tokensentdate = LocalDateTime.parse(passwordresetToken.getExpiryDate().toString(),formatfortokensentdate);
		LocalDateTime tokenrecieveddate = LocalDateTime.parse(cal.getTime().toString(),formatfortokenrecieveddate);
		long diffInHours = java.time.Duration.between(tokenrecieveddate, tokensentdate).toHours();
		System.out.println("The hours Are"+diffInHours);
	    if (diffInHours >= 24) {
	    	String message = "Link Expired";
	        model.addObject(message, message);
	        System.out.println("The password token"+passwordresetToken.getExpiryDate());
	        System.out.println("The time is "+cal.getTime());
	        
	        return "redirect:/login";
	        
	    }
	    Authentication auth = new UsernamePasswordAuthenticationToken(
	    		customuser, null, customuser.getAuthorities());
	    	    SecurityContextHolder.getContext().setAuthentication(auth);
		return "updatePassword";
	}
	@RequestMapping(value = { "/savePassword" }, method = RequestMethod.POST)
	public String savePassword(@RequestParam("password") String password) {
		 CustomUser customuser = (CustomUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		    try {
				userservice.changeUserPassword(customuser, password);
			} catch (PasswordNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    return "redirect:/login";
	}


}