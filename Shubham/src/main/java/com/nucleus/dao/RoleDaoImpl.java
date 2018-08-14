package com.nucleus.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nucleus.controller.LoginController;
import com.nucleus.model.Role;
import com.nucleus.model.User;

@Repository
public class RoleDaoImpl implements RoleDao
{
	final static Logger LOGGER=Logger.getLogger(LoginController.class);
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	

	
	@Transactional
	public void saveRecord(User user) {
		
		
		user.setEnabled(1);
		String enocodedpassword=encodePwd(user.getPassword());
		user.setPassword(enocodedpassword);
		
		sessionFactory.getCurrentSession().saveOrUpdate(user);	
	}

	@Transactional
	public List<User> viewUserName() 
	{
		List<User> userName=new ArrayList<User>();
		Query query=sessionFactory.getCurrentSession().createQuery("from User");
		userName=query.list();
		return userName;
	}
	
	public String encodePwd(String pwd) 
	{
		return bCryptPasswordEncoder.encode(pwd);
		
	}


}