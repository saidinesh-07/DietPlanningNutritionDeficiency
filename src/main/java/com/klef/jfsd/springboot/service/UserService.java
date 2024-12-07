package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.User;

public interface UserService 
{	 	 
	public String UserRegistration(User user);
	public User checkuserlogin(String uemail, String upwd);
	public User displayUserByID(int id);
	public List<User> displayUsersByHealthConditions(String healthConditions);
	public User authenticateUser(String username, String password);
	public String updateUserProfile(User user);
	public User displayUserbyID(int eid);
	
	 
}
