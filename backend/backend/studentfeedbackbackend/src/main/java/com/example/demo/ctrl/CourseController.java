package com.example.demo.ctrl;

import com.example.demo.service.CourseService;
import com.example.demo.model.Course;
import com.example.demo.model.CourseFacultyDetails;
import com.example.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/sdp/courses")
public class CourseController {

    @Autowired
    private CourseService courseService;

    // Admin adds a course with faculty selection
    @PostMapping("/add")
    public ResponseEntity<String> addCourse(
    		@RequestParam String courseName,
    		@RequestParam String courseCode,
    		@RequestParam Long facultyId) {
        return courseService.addCourse(courseName, courseCode, facultyId);
    }

    // Get available faculty for course assignment
    @GetMapping("/available-faculty")
    public ResponseEntity<List<User>> getAvailableFaculty() {
        return courseService.getAvailableFaculty();
    }

    // Admin removes a student from a course
    @PostMapping("/remove-student")
    public ResponseEntity<String> removeStudentFromCourse(
            @RequestParam Long courseId,
            @RequestParam Long studentId) {
        return courseService.removeStudentFromCourse(courseId, studentId);
    }
 // Fetch all available courses
    @GetMapping("/all")
    public ResponseEntity<List<Course>> getAllCourses() {
        return courseService.getAllCourses();
    }

    // Register a student for a course
    @PostMapping("/register")
    public ResponseEntity<String> registerStudentToCourse(
            @RequestParam Long courseId,
            @RequestParam Long studentId) {
        return courseService.registerStudentToCourse(courseId, studentId);
    }
 // Endpoint to get courses a student is already registered for
    @GetMapping("/registered")
    public ResponseEntity<List<Course>> getRegisteredCourses(@RequestParam Long studentId) {
        return courseService.getRegisteredCourses(studentId);
    }
 // Fetch students registered for a course taught by a specific faculty
    @GetMapping("/students")
    public ResponseEntity<List<User>> getStudentsForFacultyCourse(
            @RequestParam Long facultyId,
            @RequestParam Long courseId) {
        return courseService.getStudentsForFacultyCourse(facultyId, courseId);
    }
    @GetMapping("/faculty-course-details")
    public ResponseEntity<CourseFacultyDetails> getCourseAndFacultyDetails(@RequestParam Long facultyId) {
        return courseService.getCourseAndFacultyDetails(facultyId);
    }


    // Other course-related endpoints (e.g., select course, list students in a course, etc.)
}
