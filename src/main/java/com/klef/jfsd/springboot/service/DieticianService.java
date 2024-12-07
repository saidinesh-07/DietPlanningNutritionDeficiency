package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Dietician;
import com.klef.jfsd.springboot.model.User;

public interface DieticianService 
{

	public List<User> getAssignedUsers(int nid);

	public User getUserDetails(int uid);

	public String analyzeUserHealth(User user);

	public String saveBlogContent(int id, String blogContent);

	public void sendHealthAlert(int uid, String alert);

	public String updateUserHealth(int uid, String healthStatus);

	public String addnutritionist(Dietician nutritionist);

	public List<Dietician> getAllNutritionists();

	public void deleteNutritionist(int id);

	public Dietician authenticate(String email, String password);

}
