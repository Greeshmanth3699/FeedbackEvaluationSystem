package com.example.demo.ctrl;

import com.example.demo.model.User;
import com.example.demo.service.CourseService;
import com.example.demo.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.http.ResponseEntity;


@RestController
@CrossOrigin
@RequestMapping("/sdp")
public class UserController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private CourseService courseService;

    // Test Endpoints
    @GetMapping("/welcome")
    public String welcome() {
        return "It is running";
    }

    @GetMapping("/hello")
    public String hello() {
        return "Hello from Spring Boot!";
    }

    // Signin logic
    @PostMapping("/signin")
    public ResponseEntity<String> signin(@RequestParam String email, @RequestParam String password) {
        return userService.signin(email, password);
    }

    // Signup logic for Admin
    @PostMapping("/signup/admin")
    public ResponseEntity<String> signupAdmin(@RequestParam String name, @RequestParam String email, @RequestParam String password) {
        return userService.signupAdmin(name, email, password);
    }

    // Signup logic for Student
    @PostMapping("/signup/student")
    public ResponseEntity<String> signupStudent(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String password,
            @RequestParam Long phno,
            @RequestParam(required = false) MultipartFile profilePic) {
        return userService.signupStudent(name, email, password, phno, profilePic);
    }

    // Signup logic for Faculty
    @PostMapping("/signup/faculty")
    public ResponseEntity<String> signupFaculty(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String password,
            @RequestParam Long phno,
            @RequestParam String dept,
            @RequestParam(required = false) MultipartFile profilePic) {
        return userService.signupFaculty(name, email, password, phno, dept, profilePic);
    }

    // Fetch user details including profile pic for logged-in user
    @GetMapping("/details/{email}")
    public ResponseEntity<?> getUserDetails(@PathVariable String email) {
        return userService.getUserDetails(email);
    }
    @GetMapping("/getfaculty")
    public ResponseEntity<?> getFaculty(){
    	return courseService.getAvailableFaculty();
    }
    @GetMapping("/users")
    public ResponseEntity<List<User>> getUsers() {
        List<User> users = userService.getUsers();
        System.out.println(users);
        return ResponseEntity.ok(users); // Return the list of users inside ResponseEntity
    }

}
