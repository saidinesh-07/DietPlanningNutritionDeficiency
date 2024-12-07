package com.klef.jfsd.springboot.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService 
{
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public String UserRegistration(User user) 
	{
		userRepository.save(user);
		return "User Registered Successfully";
	}

	@Override
	public User checkuserlogin(String uemail, String upwd) 
	{
		return userRepository.checkuserlogin(uemail, upwd);
	}


	

	@Override
	public List<User> displayUsersByHealthConditions(String healthConditions) 
	{
		return userRepository.findUsersByHealthConditions(healthConditions);
	}
	
	

	@Override
    public User authenticateUser(String username, String password) {
        User user = null;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jfsdsdpproject", "root", "Rama@2207");
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);

            rs = stmt.executeQuery();

            if (rs.next()) {
                // If user is found, create a User object and populate it
                user = new User();
                user.setName(rs.getString("name"));
                user.setWeight(rs.getDouble("current_weight"));
                user.setTargetWeight(rs.getDouble("target_weight"));
                user.setHeight(rs.getDouble("height"));
                user.setActivityLevel(rs.getString("activity_level"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions properly
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return user; // Returns null if user not found, or User object if authentication is successful
    }

	@Override
	public String updateUserProfile(User user) {
		User e = userRepository.findById(user.getId()).get(1);
	    
	    e.setContact(user.getContact());
	    e.setHeight(user.getHeight());
	    e.setWeight(user.getWeight());
	    e.setDateOfBirth(user.getDateOfBirth());
	    e.setActivityLevel(user.getActivityLevel());
	    e.setDietaryPreferences(user.getDietaryPreferences());
	    e.setAllergies(user.getAllergies());
	    e.setHealthConditions(user.getHealthConditions());
	    e.setEmail(user.getEmail());
	    e.setGender(user.getGender());
	    e.setLocation(user.getLocation());
	    e.setName(user.getName());
	    e.setPassword(user.getPassword());
	    
	    userRepository.save(e);
	    
	    return "User Updated Successfully";
	}

	@Override
	public User displayUserbyID(int eid) {
		return userRepository.findById(eid).get(eid);
	}

	@Override
	public User displayUserByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
