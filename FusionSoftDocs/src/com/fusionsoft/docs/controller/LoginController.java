package com.fusionsoft.docs.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fusionsoft.docs.model.CustomUser;

@Controller
public class LoginController {

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public ModelAndView welcomePage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public ModelAndView homePage() {
		// ModelAndView model = new ModelAndView();
		// model.setViewName("homePage");
		ModelAndView model = new ModelAndView();
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser user = null;
		if (principal instanceof CustomUser) {
			user = ((CustomUser) principal);
		}
		model.addObject("user", user);
		System.out.println("model user ::::: " + model.toString());

		if (user.getUserrole() == 1) {
			return new ModelAndView("redirect:/admin/home");
		} else if(user.getUserrole() == 2) {
			model.setViewName("redirect:/user/home");
			return model;
	}else if(user.getUserrole() == 5) {
			System.out.println("The Control Came to Controller Of The Login"+user.getUserrole());
			model.setViewName("redirect:/verifiedapplicant/home");
			return model;
		}
	else if(user.getUserrole() == 6) {
		System.out.println("The Control Came to Controller Of The Login"+user.getUserrole());
		model.setViewName("redirect:/educationevaluator/home");
		return model;
	}
		else{
			model.setViewName("redirect:/attorney/home");
			return model;
		}

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginPage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
			@RequestParam(value = "denied", required = false) String denied,
			@RequestParam(value = "message", required = false) String message) {

		ModelAndView model = new ModelAndView();

		/*
		* CustomUser user = null; if (principal instanceof CustomUser) { user =
		* ((CustomUser) principal); } if (user.getUsername() != null &&
		* user.getPassword() != null) {
		* 
		* model.addObject("message", "Enter Username and assword"); }
		*/
		if (error != null && message == null) {
			model.addObject("error", "Invalid Credentials provided ");
		} else if (error != null && message != null) {

			model.addObject("message", "Enter username and password");
		}

		if (denied != null) {
			model.addObject("denied", "Access Denied.");
		}

		if (logout != null) {
			model.addObject("message", "Logged out successfully.");
		}
		System.out.println("model :::::::::::::::::::::::::" + model.toString());
		model.setViewName("login");
		return model;
	}

}