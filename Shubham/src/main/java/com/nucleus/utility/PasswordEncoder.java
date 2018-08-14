package com.nucleus.utility;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoder 
{
	public static String encodePwd(String pwd)
	{
		BCryptPasswordEncoder bCryptPasswordEncoder=new BCryptPasswordEncoder();
		
		return bCryptPasswordEncoder.encode(pwd);
	}

	
	public static void main(String[] args)
	{
		System.out.println("user 1 :"+encodePwd("user1"));
		System.out.println(" user 2: "+encodePwd("user2"));
		
	}
}
