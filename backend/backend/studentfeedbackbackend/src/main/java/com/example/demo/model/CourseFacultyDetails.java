package com.example.demo.model;

import java.util.List;

public class CourseFacultyDetails {

    private String facultyName;
    private List<String> courses;

    // Getters and Setters

    public String getFacultyName() {
        return facultyName;
    }

    public void setFacultyName(String facultyName) {
        this.facultyName = facultyName;
    }

    public List<String> getCourses() {
        return courses;
    }

    public void setCourses(List<String> courses) {
        this.courses = courses;
    }
}
