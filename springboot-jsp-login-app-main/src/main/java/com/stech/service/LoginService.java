package com.stech.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class LoginService {

    // Dummy storage of users (username and email as keys, and password as value)
    private Map<String, String> userCredentials = new HashMap<>();
    private Map<String, String> emailCredentials = new HashMap<>();
    
    // Default admin login credentials
    public boolean validateUser(String userId, String password) {
        return "admin".equalsIgnoreCase(userId) && "password".equalsIgnoreCase(password);
    }

    // Signup validation method
    public boolean validateSignup(String username, String email, String password) {
        if (userCredentials.containsKey(username) || emailCredentials.containsKey(email)) {
            // Username or email already exists
            return false;
        }
        
        // Storing the new user
        userCredentials.put(username, password);
        emailCredentials.put(email, password);

        return true; // Signup successful
    }

    // Additional method to handle login by checking both username and email
    public boolean login(String loginInput, String password) {
        // Check if loginInput is a username or email and validate password
        return userCredentials.getOrDefault(loginInput, "").equals(password) || 
               emailCredentials.getOrDefault(loginInput, "").equals(password);
    }
}
