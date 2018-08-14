package com.nucleus.service;

import java.util.List;

import com.nucleus.model.User;

public interface RoleService 
{
	public void saveRecord(User user);
	public List<User> viewUserName(); 
	public String encodePwd(String pwd);

}
