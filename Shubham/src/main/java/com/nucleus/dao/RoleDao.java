package com.nucleus.dao;

import java.util.List;

import com.nucleus.model.Role;
import com.nucleus.model.User;

public interface RoleDao 
{
	public void saveRecord(User user);
	public List<User> viewUserName(); 
	public String encodePwd(String pwd);
}
