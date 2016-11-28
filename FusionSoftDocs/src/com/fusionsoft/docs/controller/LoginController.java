package com.fusionsoft.docs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fusionsoft.docs.model.CustomUser;

@Controller
public class LoginController {

	@RequestMapping(value = {"/"}, method = { RequestMethod.GET})
	public ModelAndView welcomePage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = { "/home"}, method = { RequestMethod.GET})
	public ModelAndView homePage(HttpServletRequest request) {
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUser user=null;
        if (principal instanceof CustomUser) {
        	user = ((CustomUser)principal);
        }
     
        if(user.getUserrole() == 1 ){
        		return new ModelAndView("redirect:/admin/home");
      
    		
        }else{
    		return new ModelAndView("redirect:/user/home");
        }
        
	}
	
	@RequestMapping(value = { "/login"}, method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPage(@RequestParam(value = "error",required = false) String error,
	@RequestParam(value = "logout",	required = false) String logout, @RequestParam(value = "denied",	required = false) String denied) {
		
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid Credentials provided.");
		}

		if (denied != null) {
			model.addObject("denied", "Access Denied.");
		}

		if (logout != null) {
			model.addObject("message", "Logged out from JournalDEV successfully.");
		}

		model.setViewName("login");
		return model;
	}

}