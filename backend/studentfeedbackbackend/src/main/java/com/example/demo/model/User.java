package com.example.demo.model;

import jakarta.persistence.*;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-generate the ID
    private Long id;

    @Column(nullable = false) // Name is required
    private String name;

    @Column(nullable = false, unique = true) // Email should be unique and not null
    private String email;

    @Column(nullable = false) // Password is required
    private String password;

    @Column(nullable = false) // Role is required (Admin, Faculty, Student)
    private String role;

    @Column(name = "profile_pic_path") // Store profile pic as file path
    private String profilePic; // Reference to profile picture in the ref folder

    @Column(nullable = true, unique = true) // Phone number should be unique
    private Long phno;

    @Column // Department field, only applicable to faculty
    private String dept;

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

    public Long getPhno() {
        return phno;
    }

    public void setPhno(Long phno) {
        this.phno = phno;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", role=" + role
				+ ", profilePic=" + profilePic + ", phno=" + phno + ", dept=" + dept + "]";
	}
    
}
