package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    @GetMapping("about")
    public ModelAndView about() {
        return new ModelAndView("about");
    }

    @GetMapping("userreg")
    public ModelAndView userRegPage() {
        return new ModelAndView("userreg");
    }

    @GetMapping("userlogin")
    public ModelAndView showUserLoginPage() {
        ModelAndView mv = new ModelAndView("userlogin");
        mv.addObject("userlogin", new User());
        return mv;
    }

    @PostMapping("checkuserlogin")
    public ModelAndView checkUserLogin(@RequestParam("uemail") String uemail,
                                       @RequestParam("upwd") String upwd,
                                       HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        User user = userService.checkuserlogin(uemail, upwd);
        
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            mv.setViewName("userhome");
        }
        
        else {
            mv.setViewName("userlogin");
            mv.addObject("message", "Login failed. Please check your credentials.");
        }
        return mv;
    }

    @PostMapping("insertuser")
    public ModelAndView insertuser(HttpServletRequest request) {
      
      String uname = request.getParameter("name");
      String ugender = request.getParameter("gender");
      String udob = request.getParameter("dateOfBirth");
      double uheight = Double.parseDouble( request.getParameter("height") );
      double uweight = Double.parseDouble(  request.getParameter("weight") );
      String uactivityLevel = request.getParameter("activityLevel");
      String uallergies = request.getParameter("allergies");
      String uhealthConditions = request.getParameter("healthConditions");
      String uemail = request.getParameter("email");
      String upassword = request.getParameter("password");
      String ucontact = request.getParameter("contact");
      String ulocation = request.getParameter("location");
      double utargetWeight = Double.parseDouble( request.getParameter("targetWeight") );
      String ugoal = request.getParameter("goal");
      
      User usr = new User();
      
      usr.setName(uname);
      usr.setGender(ugender);
      usr.setDateOfBirth(udob);
      usr.setHeight(uheight);
      usr.setWeight(uweight);
      usr.setActivityLevel(uactivityLevel);
      usr.setAllergies(uallergies);
      usr.setHealthConditions(uhealthConditions);
      usr.setEmail(uemail);
      usr.setPassword(upassword);
      usr.setContact(ucontact);
      usr.setLocation(ulocation);
      usr.setTargetWeight(utargetWeight);
      usr.setGoal(ugoal);
      usr.setStatus("In progress");
      
      String msg = userService.UserRegistration(usr);
      
      ModelAndView mv = new ModelAndView("regsuccess");
      mv.addObject("message", msg);
      
      return mv;
    }

    @GetMapping("userhome")
    public ModelAndView userHome() {
        return new ModelAndView("userhome");
    }
    
    @GetMapping("viewdietplan")
    public ModelAndView viewdietplan() {
    	return new ModelAndView("viewdietplan");
    }
    
    @GetMapping("consultnutritionist")
    public ModelAndView consultnutritionist() {
    	return new ModelAndView("consultnutritionist");
    }
    
    @PostMapping("/submitAppointment")
    public ModelAndView submitAppointment(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String contact,
            @RequestParam String appointmentDate,
            @RequestParam(required = false) String message) {
        
        // Create a ModelAndView object and set the view name
        ModelAndView modelAndView = new ModelAndView("submitAppointment");

        // Add data to the model
        modelAndView.addObject("name", name);
        modelAndView.addObject("email", email);
        modelAndView.addObject("contact", contact);
        modelAndView.addObject("appointmentDate", appointmentDate);
        modelAndView.addObject("message", message);

        return modelAndView;
    }

    @GetMapping("userprofile")
    public ModelAndView userProfile() {
        return new ModelAndView("userprofile");
    }
    
    @PostMapping("updateuserprofile")
    public ModelAndView updateuserprofile(HttpServletRequest request)
    {
      ModelAndView mv = new ModelAndView();
      
     try
     {
         int id = Integer.parseInt(request.getParameter("eid"));
         String name = request.getParameter("ename");
       String gender = request.getParameter("egender");
       String dob = request.getParameter("edob");
       String dept = request.getParameter("edept");
       double salary = Double.parseDouble(request.getParameter("esalary"));
       String password = request.getParameter("epwd");
       String location = request.getParameter("elocation");
       String contact = request.getParameter("econtact");
       
         User user = new User();
         user.setId(id);
         user.setName(name);
         user.setGender(gender);
//         user.setDepartment(dept);
//         user.setDateofbirth(dob);
//         user.setSalary(salary);
         user.setPassword(password);
         user.setLocation(location);
         user.setContact(contact);
         
         String msg = userService.updateUserProfile(user);
         
         User e = userService.displayUserbyID(id);
         
          HttpSession session = request.getSession();
          session.setAttribute("employee",e); //employee is session variable
        
        
         mv.setViewName("updatesuccess");
         mv.addObject("message", msg);
       
     }
     catch(Exception e)
     {
       mv.setViewName("updateerror");
       mv.addObject("message", e);
     }
       return mv;
    }

    @GetMapping("updateuser")
    public ModelAndView updateUser() {
        return new ModelAndView("updateuser");
    }

    @GetMapping("usercontactus")
    public ModelAndView userContactUs() {
        return new ModelAndView("usercontactus");
    }

//    @GetMapping("userlogout")
//    public ModelAndView userLogout(HttpServletRequest request) {
//        HttpSession session = request.getSession();
//        session.removeAttribute("user");
//        return new ModelAndView("userlogout");
//    }
    @GetMapping("/userlogout")
    public ModelAndView userlogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("user");  // Removes the specific attribute only

        ModelAndView mv = new ModelAndView();
        mv.setViewName("userlogin");  // Redirect to the login page after logout
        return mv;
    }



    @GetMapping("usersessionexpiry")
    public ModelAndView userSessionExpiry() {
        return new ModelAndView("usersessionexpiry");
    }
    @GetMapping("userdashboard")
    public ModelAndView userdashboard() {
        return new ModelAndView("userdashboard");
    }
    

    @GetMapping("viewusersbyhealthcondition")
    public ModelAndView viewUsersByHealthCondition(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("viewusersbyhealthcondition");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        List<User> userList = userService.displayUsersByHealthConditions(user.getHealthConditions());
        mv.addObject("userList", userList);
        return mv;
    }

    private User getUserFromRequest(HttpServletRequest request) {
        String name = getStringParameter(request, "name");
        String gender = getStringParameter(request, "gender");
        String dob = getStringParameter(request, "dateOfBirth");
        double height = getDoubleParameter(request, "height");
        double weight = getDoubleParameter(request, "weight");
        String activityLevel = getStringParameter(request, "activityLevel");
        String dietaryPreferences = getStringParameter(request, "dietaryPreferences");
        String allergies = getStringParameter(request, "allergies");
        String healthConditions = getStringParameter(request, "healthConditions");
        String email = getStringParameter(request, "email");
        String password = getStringParameter(request, "password");
        String contact = getStringParameter(request, "contact");
        String location = getStringParameter(request, "location");
        double targetWeight = getDoubleParameter(request, "targetWeight");
        String goal = getStringParameter(request, "goal");

        User user = new User();
        user.setName(name);
        user.setGender(gender);
        user.setDateOfBirth(dob);
        user.setHeight(height);
        user.setWeight(weight);
        user.setActivityLevel(activityLevel);
        user.setDietaryPreferences(dietaryPreferences);
        user.setAllergies(allergies);
        user.setHealthConditions(healthConditions);
        user.setEmail(email);
        user.setPassword(password);
        user.setContact(contact);
        user.setLocation(location);
        user.setTargetWeight(targetWeight);
        user.setGoal(goal);
        user.setStatus("Registered");
        return user;
    }

    private String getStringParameter(HttpServletRequest request, String paramName) {
        return request.getParameter(paramName) != null ? request.getParameter(paramName).trim() : "";
    }

    private double getDoubleParameter(HttpServletRequest request, String paramName) {
        double value = 0.0;
        try {
            value = Double.parseDouble(request.getParameter(paramName).trim());
        } catch (NumberFormatException e) {
            value = 0.0;
        }
        return value;
    }
    
    
    
}
