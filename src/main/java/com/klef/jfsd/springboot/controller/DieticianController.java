package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Dietician;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.DieticianService;

@Controller
public class DieticianController 
{
    @Autowired
    private DieticianService dieticianService;
    
    @GetMapping("dieticianreg")
    public ModelAndView dieticianreg() {
    	return new ModelAndView("dieticianreg");
    }
    
    @GetMapping("dieticianlogin")
    public ModelAndView dieticianlogin() {
        ModelAndView mv = new ModelAndView("dieticianlogin");  // JSP page to be rendered
        mv.addObject("dieticianlogin", new Dietician());  // Add an empty User object to the model
        return mv;
    }
    
    @GetMapping("dieticianhome")
    public ModelAndView dieticianhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dieticianhome");
        return mv;
    }
    
    @PostMapping("dieticianlogin")
    public String dieticianlogin(@RequestParam String email, @RequestParam String password, Model model) {
        Dietician dietician = dieticianService.authenticate(email, password);

        if (dietician != null) {
            // Login successful, redirect to dashboard
            return "redirect:/dieticianhome";
        } else {
            // Login failed, show error
            model.addAttribute("error", "Invalid email or password");
            return "dieticianlogin";
        }
    }
    
    @GetMapping("viewassignedusers")
    public ModelAndView viewAssignedUsers(@RequestParam("nid") int nid) 
    {
        ModelAndView mv = new ModelAndView("viewassignedusers");
        List<User> userList = dieticianService.getAssignedUsers(nid);
        mv.addObject("userList", userList);
        return mv;
    }
    
    @GetMapping("analyzeuser")
    public ModelAndView analyzeUser(@RequestParam("uid") int uid) 
    {
        ModelAndView mv = new ModelAndView("analyzeuser");
        User user = dieticianService.getUserDetails(uid);
        String recommendation = dieticianService.analyzeUserHealth(user);
        mv.addObject("user", user);
        mv.addObject("recommendation", recommendation);
        return mv;
    }

    @GetMapping("createblog")
    public ModelAndView createBlog() 
    {
        ModelAndView mv = new ModelAndView("createblog");
        mv.addObject("nutritionist", new Dietician());
        return mv;
    }

    @PostMapping("submitblog")
    public ModelAndView submitBlog(@ModelAttribute("nutritionist") Dietician n, @RequestParam("blogContent") String blogContent) 
    {
        String msg = dieticianService.saveBlogContent(n.getId(), blogContent);
        ModelAndView mv = new ModelAndView("blogsuccess");
        mv.addObject("message", msg);
        return mv;
    }

    @GetMapping("sendhealthalerts")
    public ModelAndView sendHealthAlerts(@RequestParam("uid") int uid, @RequestParam("alert") String alert) 
    {
        dieticianService.sendHealthAlert(uid, alert);
        return new ModelAndView("alertsuccess");
    }

    @PostMapping("updateuserhealth")
    public ModelAndView updateUserHealth(@RequestParam("uid") int uid, @RequestParam("healthStatus") String healthStatus) 
    {
        String msg = dieticianService.updateUserHealth(uid, healthStatus);
        ModelAndView mv = new ModelAndView("updatehealthsuccess");
        mv.addObject("message", msg);
        return mv;
    }
}
