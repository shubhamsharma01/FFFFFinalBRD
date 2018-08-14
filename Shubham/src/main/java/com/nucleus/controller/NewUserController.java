package com.nucleus.controller;

import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nucleus.dao.RoleDao;

import com.nucleus.model.Role;
import com.nucleus.model.User;
import com.nucleus.service.RoleService;

@Controller
public class NewUserController 
{
	final static Logger LOGGER=Logger.getLogger(LoginController.class);
	
	
	@Autowired
	RoleService roleService;
	
	@RequestMapping("/adduser")
	public ModelAndView requestHandler1(User user, Role role)
	{
		return new ModelAndView("addNewUser");
	}
	
	
	@RequestMapping("/back")
	public ModelAndView requestHandler2(User user, Role role)
	{
		return new ModelAndView("addNewUser");
	}
	
	@RequestMapping("/submitdetails")
	public ModelAndView save(User user)
	{   
		roleService.saveRecord(user);
		return new ModelAndView("newSignin", "success", " New user Registered");
	}
	
	
	@RequestMapping("/viewuser")
	public ModelAndView requestHandler3()
	{
		List<User> list=roleService.viewUserName();
		return new ModelAndView("ViwAllUserRecords","c",list);
	}
}