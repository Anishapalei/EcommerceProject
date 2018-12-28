/*package com.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister() {

		ModelAndView mav = new ModelAndView();
		mav.addObject("cmd", new UserDetail());
		mav.setViewName("Register");
		return mav;
	}

	@RequestMapping(value = "/saveRegister", method = RequestMethod.POST)
	public ModelAndView doRegister(@Valid @ModelAttribute("cmd") UserDetail user, BindingResult result) {
		ModelAndView mav = new ModelAndView();

		if (result.hasErrors())

		{
			mav.setViewName("Register");

			return mav;
		} else {
			user.setRole("ROLE_USER");
			user.setEnabled(true);
			userdao.save(user);
			mav.setViewName("redirect:/login");
			return mav;
		}

	}

	
	@RequestMapping(value="/login_success")
	public String loginSuccess(HttpSession session,Model m)
	
	{
		String page="";
		boolean loggedIn=false;
		
		SecurityContext sContext=SecurityContextHolder.getContext();
		Authentication authentication=sContext.getAuthentication();
		
		
		String username=authentication.getName();
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role: roles)
		{
			session.setAttribute("role", role.getAuthority());
			if(role.getAuthority().equals("ROLE_ADMIN"))
			{
				loggedIn=true;
				page="AdminHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);		
				
		
			}
			else
			{
				loggedIn=true;
				page="UserHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);		
				
		
				
			}
		}
		
		
		return page;
	}
	
	
	
	
	
	
	
	
	

}*/
