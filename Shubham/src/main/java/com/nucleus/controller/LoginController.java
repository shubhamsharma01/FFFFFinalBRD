package com.nucleus.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class LoginController 
{
	final static Logger LOGGER=Logger.getLogger(LoginController.class);
	@RequestMapping("/accdenied")
	public String requestHandler1()
	{
		return "checker";
	}
	
	
	@RequestMapping("/login")
	public String requestHandler2()
	{
		return "login";
	}
	
	
	@RequestMapping("/loginfailure")
	public ModelAndView requestHandler3()
	{
		return new ModelAndView("login" , "error" , "Wrong credentials");
	}
	
	@RequestMapping("/defaultpage")
	public String requestHandler3(HttpServletRequest request)
	{
		String targetUrl=null;
		if(request.isUserInRole("ROLE_USER"))
		{
			targetUrl="redirect:/index";
		}
		else if(request.isUserInRole("ROLE_ADMIN"))
		{
			targetUrl="redirect:/checker";
		}
		else
			targetUrl="redirect:/";
		
		return targetUrl;
	}
	

}
