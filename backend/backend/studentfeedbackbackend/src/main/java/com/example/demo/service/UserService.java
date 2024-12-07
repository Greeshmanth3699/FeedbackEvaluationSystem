package com.example.demo.service;

import com.example.demo.model.User;
import com.example.demo.repo.Userrepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Service
public class UserService {

    @Autowired
    private Userrepo userrepo;

    // Signin logic
    public ResponseEntity<String> signin(String email, String password) {
        User user = userrepo.findByEmail(email);
        if (user == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid email or password.");
        }
        if (!user.getPassword().equals(password)) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid email or password.");
        }
        return ResponseEntity.ok(""+user.getId()+" "+user.getRole());
    }

    // Signup logic for Admin
    public ResponseEntity<String> signupAdmin(String name, String email, String password) {
        if (userrepo.findByEmail(email) != null) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Email is already in use.");
        }

        User newUser = new User();
        newUser.setName(name);
        newUser.setEmail(email);
        newUser.setPassword(password);  // In production, hash the password
        newUser.setRole("Admin");

        userrepo.save(newUser);
        return ResponseEntity.status(HttpStatus.CREATED).body("Admin registered successfully.");
    }

    // Signup logic for Student
    public ResponseEntity<String> signupStudent(String name, String email, String password, Long phno, MultipartFile profilePic) {
        try {
            if (userrepo.findByEmail(email) != null) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Email is already in use.");
            }

            User newUser = new User();
            newUser.setName(name);
            newUser.setEmail(email);
            newUser.setPassword(password);
            newUser.setRole("Student");
            newUser.setPhno(phno);

            if (profilePic != null && !profilePic.isEmpty()) {
                String filePath = saveProfilePic(profilePic);
                newUser.setProfilePic(filePath);
            }

            userrepo.save(newUser);
            return ResponseEntity.status(HttpStatus.CREATED).body("Student registered successfully.");
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error saving profile picture.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Signup failed: " + e.getMessage());
        }
    }

    // Signup logic for Faculty
    public ResponseEntity<String> signupFaculty(String name, String email, String password, Long phno, String dept, MultipartFile profilePic) {
        try {
            if (userrepo.findByEmail(email) != null) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Email is already in use.");
            }

            User newUser = new User();
            newUser.setName(name);
            newUser.setEmail(email);
            newUser.setPassword(password);
            newUser.setRole("Faculty");
            newUser.setPhno(phno);
            newUser.setDept(dept);

            if (profilePic != null && !profilePic.isEmpty()) {
                String filePath = saveProfilePic(profilePic);
                newUser.setProfilePic(filePath);
            }

            userrepo.save(newUser);
            return ResponseEntity.status(HttpStatus.CREATED).body("Faculty registered successfully.");
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error saving profile picture.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Signup failed: " + e.getMessage());
        }
    }

    // Fetch user details
    public ResponseEntity<?> getUserDetails(String email) {
        User user = userrepo.findByEmail(email);
        if (user == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("User not found.");
        }

        // Prepare the response
        return ResponseEntity.ok(user);
    }
    public List<User> getUsers() {
        return userrepo.findAll(); // Get all users from the database
    }


    // Helper method to save the profile picture
    private String saveProfilePic(MultipartFile profilePic) throws IOException {
        if (profilePic != null && !profilePic.isEmpty()) {
            String uploadDir = "uploads/";
            java.io.File uploadDirFile = new java.io.File(uploadDir);
            if (!uploadDirFile.exists()) {
                uploadDirFile.mkdirs();
            }

            String filePath = uploadDir + profilePic.getOriginalFilename();
            Path path = Paths.get(filePath);
            Files.copy(profilePic.getInputStream(), path, java.nio.file.StandardCopyOption.REPLACE_EXISTING);
            return filePath;
        }
        return null;
    }
}
