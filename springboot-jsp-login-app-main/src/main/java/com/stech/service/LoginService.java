package com.stech.service;

import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
public class LoginService {

    // Dummy user data storage
    private Set<String> users = new HashSet<>();
    private Set<String> emails = new HashSet<>();
    
    // Initial admin credentials for login
    public boolean validateUser(String userid, String password) {
        return userid.equalsIgnoreCase("admin") && password.equalsIgnoreCase("password");
    }

    // Signup validation
    public boolean validateSignup(String username, String email, String password) {
        // Check if username or email is already in use
        if (users.contains(username) || emails.contains(email)) {
            return false; // Username or email already exists
        }
        
        // Otherwise, add the user and email to the sets
        users.add(username);
        emails.add(email);

        // Signup successful
        return true;
    }
}
