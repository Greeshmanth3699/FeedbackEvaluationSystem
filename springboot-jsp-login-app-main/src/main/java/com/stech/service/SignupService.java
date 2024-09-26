package com.stech.service;

import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;

@Service
public class SignupService {

    // In-memory database to store username and password pairs
    private Map<String, String> userDatabase = new HashMap<>();

    // Constructor to initialize with a default user (optional)
    public SignupService() {
        // Adding an admin user by default (for testing)
        userDatabase.put("admin", "password");
    }

    // Validate login credentials
    public boolean validateUser(String username, String password) {
        return userDatabase.containsKey(username) && userDatabase.get(username).equals(password);
    }

    // Validate and store signup credentials
    public boolean signupUser(String username, String password) {
        // Validate the username and password (basic validation)
        if (username == null || username.isEmpty() || password == null || password.length() < 6) {
            return false; // Return false if validation fails
        }

        // Check if the user already exists
        if (userDatabase.containsKey(username)) {
            return false; // User already exists
        }

        // Store the username and password in the in-memory map
        userDatabase.put(username, password);
        return true; // Signup successful
    }
}

