package com.nucleus.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nucleus.controller.LoginController;
import com.nucleus.dao.CustomerDao;
import com.nucleus.dao.RoleDao;
import com.nucleus.model.User;
@Service
public class RoleServiceImpl implements RoleService
{
	
	final static Logger LOGGER=Logger.getLogger(LoginController.class);
	

	@Autowired
	RoleDao roleDao;
	public void saveRecord(User user) 
	{
		roleDao.saveRecord(user);
		
	}

	public List<User> viewUserName() 
	{
		return roleDao.viewUserName() ;
	}

	public String encodePwd(String pwd) {
	
		return roleDao.encodePwd(pwd);
		
	}

}
