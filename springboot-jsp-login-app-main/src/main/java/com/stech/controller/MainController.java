package com.stech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.stech.service.LoginService;

@Controller
@SessionAttributes("name")
public class MainController {

    @Autowired
    LoginService service;

    // Map the root URL ("/") to the home page (home.jsp)
    @GetMapping(value = "/")
    public String home() {
        return "home";  // Renders home.jsp (your welcome page)
    }
    
    @GetMapping(value = "/welcome")
    public String welcome() {
        return "welcome";  // Renders home.jsp (your welcome page)
    }

    // Map to the login page (login.jsp) - GET Request
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String viewLoginPage(ModelMap map) {
        return "login";  // Renders login.jsp when clicking "Login"
    }

    // Handle login form submission - POST Request
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {

        boolean isValidUser = service.validateUser(name, password);

        if (!isValidUser) {
            model.put("errorMessage", "Access Denied, Invalid Credentials");
            return "login";
        }

        model.put("name", name);
        model.put("password", password);

        return "welcome";  // Redirects to the welcome page upon successful login
    }

    // Map to the register page (register.jsp)
    @GetMapping(value = "/register")
    public String register() {
        return "register";  // Renders register.jsp when clicking "Register"
    }

    // Map to the about page (about.jsp)
    @GetMapping(value = "/about")
    public String about() {
        return "about";  // Renders about.jsp when clicking "About"
    }

    // Handle user logout
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String showLogoutPage(ModelMap model) {
        model.clear();  // Clears the session attributes upon logout
        return "login";  // Redirects back to the login page
    }
}
