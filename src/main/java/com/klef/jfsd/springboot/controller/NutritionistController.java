package com.klef.jfsd.springboot.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Blog;
import com.klef.jfsd.springboot.model.Nutritionist;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.BlogService;
import com.klef.jfsd.springboot.service.NutritionistService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class NutritionistController 
{
    @Autowired
    private NutritionistService nutritionistService;
    
    @Autowired
    private BlogService blogService;
    
    @GetMapping("nutritionistreg")
    public ModelAndView nutritionistreg() {
    	return new ModelAndView("nutritionistreg");
    }
    
    
    @PostMapping("insertnutritionist")
    @ResponseBody
    public String insertnutritionist(HttpServletRequest request) {
    	
    	String nname = request.getParameter("name");
    	String nemail = request.getParameter("email");
    	String npassword = request.getParameter("password");
    	String ncontact = request.getParameter("contact");
    	String nexpertise = request.getParameter("expertise");
    	String nbio = request.getParameter("bio");
    	String ndietaryRecommendations = request.getParameter("dietaryRecommendations");
    	String blogsInput = request.getParameter("blogs");
    	List<String> nblogs = Arrays.asList(blogsInput.split("\\r?\\n"));
    	String ntestimonials = request.getParameter("testimonials");
    	
    	Nutritionist nutritionist = new Nutritionist();
    	
    	nutritionist.setName(nname);
    	nutritionist.setEmail(nemail);
    	nutritionist.setPassword(npassword);
    	nutritionist.setContact(ncontact);
    	nutritionist.setExpertise(nexpertise);
    	nutritionist.setBio(nbio);
    	nutritionist.setDietaryRecommendations(ndietaryRecommendations);
    	nutritionist.setBlogs(nblogs);
    	nutritionist.setTestimonials(ntestimonials);
    	
    	String msg = nutritionistService.addnutritionist(nutritionist);
    	
    	return msg;
    	
    }
    
    @GetMapping("recommendations")
    public ModelAndView recommendations() {
    	return new ModelAndView("recommendations");
    }
    
    @GetMapping("trackprogress")
    public ModelAndView trackprogress() {
    	return new ModelAndView("trackprogress");
    }
    
    
    
    @GetMapping("nutritionistlogin")
    public ModelAndView nutritionistlogin() {
        ModelAndView mv = new ModelAndView("nutritionistlogin");  // JSP page to be rendered
        mv.addObject("nutritionistlogin", new Nutritionist());  // Add an empty User object to the model
        return mv;
    }
    
    @GetMapping("nutritionisthome")
    public ModelAndView nutritionisthome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("nutritionisthome");
        return mv;
    }
    
    @PostMapping("nutritionistlogin")
    public String nutritionistLogin(@RequestParam String email, @RequestParam String password, Model model) {
        Nutritionist nutritionist = nutritionistService.authenticate(email, password);

        if (nutritionist != null) {
            // Login successful, redirect to dashboard
            return "redirect:/nutritionisthome";
        } else {
            // Login failed, show error
            model.addAttribute("error", "Invalid email or password");
            return "nutritionistlogin";
        }
    }
    
    @GetMapping("viewassignedusers")
    public ModelAndView viewAssignedUsers(@RequestParam("nid") int nid) 
    {
        ModelAndView mv = new ModelAndView("viewassignedusers");
        List<User> userList = nutritionistService.getAssignedUsers(nid);
        mv.addObject("userList", userList);
        return mv;
    }
    
    @GetMapping("analyzeuser")
    public ModelAndView analyzeUser(@RequestParam("uid") int uid) 
    {
        ModelAndView mv = new ModelAndView("analyzeuser");
        User user = nutritionistService.getUserDetails(uid);
        String recommendation = nutritionistService.analyzeUserHealth(user);
        mv.addObject("user", user);
        mv.addObject("recommendation", recommendation);
        return mv;
    }

    @GetMapping("createblog")
    public ModelAndView createBlog() 
    {
        ModelAndView mv = new ModelAndView("createblog");
        mv.addObject("nutritionist", new Nutritionist());
        return mv;
    }

    @PostMapping("submitblog")
    public ModelAndView submitblog(HttpServletRequest request) {
        
        // Retrieve data from the form
    	String id = request.getParameter("id");
        String title = request.getParameter("title");
        String category = request.getParameter("category");
        String content = request.getParameter("content");
        String tags = request.getParameter("tags");
        String author = (String) request.getSession().getAttribute("nutritionistName"); // Assuming nutritionist's name is stored in session
        String createdDate = (String) request.getParameter("createddate");
        
        // Create a Blog object and populate it
        Blog blog = new Blog();
        blog.setTitle(title);
        blog.setCategory(category);
        blog.setContent(content);
        blog.setTags(tags);

        // Call the service to save the blog
        String msg = blogService.saveBlog(blog);

        // Prepare ModelAndView for the response
        ModelAndView mv = new ModelAndView("blogsuccess");
        mv.addObject("message", msg);

        return mv;
    }


    @GetMapping("sendhealthalerts")
    public ModelAndView sendHealthAlerts(@RequestParam("uid") int uid, @RequestParam("alert") String alert) 
    {
        nutritionistService.sendHealthAlert(uid, alert);
        return new ModelAndView("alertsuccess");
    }

    @PostMapping("updateuserhealth")
    public ModelAndView updateUserHealth(@RequestParam("uid") int uid, @RequestParam("healthStatus") String healthStatus) 
    {
        String msg = nutritionistService.updateUserHealth(uid, healthStatus);
        ModelAndView mv = new ModelAndView("updatehealthsuccess");
        mv.addObject("message", msg);
        return mv;
    }
}
