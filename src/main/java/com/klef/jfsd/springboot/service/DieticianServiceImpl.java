package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Dietician;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.DieticianRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class DieticianServiceImpl implements DieticianService 
{

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private DieticianRepository dieticianRepository;

    
    public Dietician authenticate(String email, String password) 
    {
        Dietician nutritionist = dieticianRepository.findByEmail(email);
        if (nutritionist != null && nutritionist.getPassword().equals(password)) {
            return nutritionist;
        }
        return null;
    }

   // @Override
//    public User getUserDetails(int uid) 
//    {
//        // Retrieve user details based on their ID
//        return userRepository.findById(uid).orElse(null);
//    }

    @Override
    public String analyzeUserHealth(User user) 
    {
        // Placeholder for analyzing the user's health. This could involve complex logic.
        String healthStatus = "Health Analysis: User seems to have a balanced diet. Continue monitoring.";
        user.setHealthConditions(healthStatus);
        userRepository.save(user);
        return healthStatus;
    }

    @Override
    public String saveBlogContent(int id, String blogContent) 
    {
        // Fetch the nutritionist by ID
//        Optional<Dietician> optionalNutritionist = dieticianRepository.findById(id);
//
//        if (optionalNutritionist.isPresent()) {
//            Dietician nutritionist = optionalNutritionist.get();
//            //nutritionist.getBlogs().add(blogContent);  // Assuming nutritionist has a list of blog content
//            dieticianRepository.save(nutritionist);
//            return "Blog content saved successfully";
//        } else {
//            return "Nutritionist not found";
//        }
    	
    	return null;
    } 


//    @Override
//    public void sendHealthAlert(int uid, String alert)
//    {
//        // Send a health alert to the user (via email, SMS, or other notification)
//        User user = userRepository.findById(uid).orElse(null);
//        if (user != null) {
//            // Logic for sending alert to the user (e.g., email or notification)
//            user.setHealthConditions(alert);  // Assuming `User` has a `health conditions` field
//            userRepository.save(user);
//        }
//    }

//    @Override
//    public String updateUserHealth(int uid, String healthStatus) 
//    {
//        // Update the user's health status
//        User user = userRepository.findById(uid).orElse(null);
//        if (user != null) {
//            user.setHealthConditions(healthStatus);
//            userRepository.save(user);
//            return "User health status updated successfully";
//        }
//        return "User not found";
//    }

    @Override
    public List<User> getAssignedUsers(int nid) {
        // Fetch all users assigned to a specific nutritionist by nutritionistId
        return userRepository.findByNutritionistId(nid);
    }

	@Override
	public String addnutritionist(Dietician nutritionist) {
		dieticianRepository.save(nutritionist);
		return "Nutritionist Added Successfully";
	}

	@Override
	public List<Dietician> getAllNutritionists() 
	{
		return dieticianRepository.findAll();
	}

	@Override
	public void deleteNutritionist(int id) 
	{
		if (dieticianRepository.existsById(id)) {
            dieticianRepository.deleteById(id);  // Delete nutritionist by id
        }
		
	}

	@Override
	public User getUserDetails(int uid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void sendHealthAlert(int uid, String alert) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String updateUserHealth(int uid, String healthStatus) {
		// TODO Auto-generated method stub
		return null;
	}

}
