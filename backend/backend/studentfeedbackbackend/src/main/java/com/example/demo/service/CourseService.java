package com.example.demo.service;

import com.example.demo.model.Course;
import com.example.demo.model.CourseFacultyDetails;
import com.example.demo.model.User;
import com.example.demo.repo.CourseRepo;
import com.example.demo.repo.Userrepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CourseService {

    @Autowired
    private CourseRepo courseRepo;

    @Autowired
    private Userrepo userRepo;

    // Admin adds a course with faculty selection
    public ResponseEntity<String> addCourse(String courseName, String courseCode, Long facultyId) {
        User faculty = userRepo.findById(facultyId).orElse(null);
        if (faculty == null || !faculty.getRole().equals("Faculty")) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid faculty ID.");
        }

        Course course = new Course();
        course.setCourseName(courseName);
        course.setCourseCode(courseCode);
        course.setFaculty(faculty);

        courseRepo.save(course);
        return ResponseEntity.status(HttpStatus.CREATED).body("Course added successfully with faculty " + faculty.getName());
    }

    // Get available faculty for the admin
    public ResponseEntity<List<User>> getAvailableFaculty() {
        List<User> facultyList = userRepo.findByRole("Faculty");
        if (facultyList.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
        return ResponseEntity.ok(facultyList);
    }

    // Admin removes a student from a course
    public ResponseEntity<String> removeStudentFromCourse(Long courseId, Long studentId) {
        Course course = courseRepo.findById(courseId).orElse(null);
        if (course == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Course not found.");
        }

        User student = userRepo.findById(studentId).orElse(null);
        if (student == null || !student.getRole().equals("Student")) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid student ID.");
        }

        if (!course.getStudents().contains(student)) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Student not enrolled in the course.");
        }

        course.getStudents().remove(student);
        courseRepo.save(course);
        return ResponseEntity.ok("Student removed from course.");
    }
 // Fetch all available courses
    public ResponseEntity<List<Course>> getAllCourses() {
        List<Course> courses = courseRepo.findAll(); // Fetch all courses
        return ResponseEntity.ok(courses);
    }

    // Allow a student to register for a course
    public ResponseEntity<String> registerStudentToCourse(Long courseId, Long studentId) {
        Course course = courseRepo.findById(courseId).orElse(null);
        if (course == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Course not found.");
        }

        User student = userRepo.findById(studentId).orElse(null);
        if (student == null || !student.getRole().equals("Student")) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid student ID.");
        }

        // Check if student is already enrolled
        if (course.getStudents().contains(student)) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Student already enrolled in the course.");
        }

        course.getStudents().add(student); // Add student to the course
        courseRepo.save(course);
        return ResponseEntity.ok("Student registered to course successfully.");
    }
 // Fetch registered courses for a student
    public ResponseEntity<List<Course>> getRegisteredCourses(Long studentId) {
        User student = userRepo.findById(studentId).orElse(null);
        if (student == null || !student.getRole().equals("Student")) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(null);
        }

        // Find courses the student is registered for
        List<Course> registeredCourses = courseRepo.findCoursesByStudentsId(studentId);
        return ResponseEntity.ok(registeredCourses);
    }
    public ResponseEntity<List<User>> getStudentsForFacultyCourse(Long facultyId, Long courseId) {
        Course course = courseRepo.findById(courseId).orElse(null);
        if (course == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }

        // Check if the course belongs to the faculty
        if (!course.getFaculty().getId().equals(facultyId)) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body(null);
        }

        // Return the list of students registered for the course
        List<User> students = course.getStudents().stream().collect(Collectors.toList());
        return ResponseEntity.ok(students);
    }
    public ResponseEntity<CourseFacultyDetails> getCourseAndFacultyDetails(Long facultyId) {
        // Fetch the faculty details
        User faculty = userRepo.findById(facultyId).orElse(null);
        if (faculty == null || !faculty.getRole().equals("Faculty")) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);  // Faculty not found or invalid role
        }

        // Fetch the courses taught by this faculty
        List<Course> courses = courseRepo.findByFacultyId(facultyId);
        if (courses.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);  // No courses found for this faculty
        }

        // Create the response object to send course and faculty details
        CourseFacultyDetails courseFacultyDetails = new CourseFacultyDetails();
        courseFacultyDetails.setFacultyName(faculty.getName());
        courseFacultyDetails.setCourses(courses.stream().map(course -> course.getCourseName()).collect(Collectors.toList()));

        return ResponseEntity.ok(courseFacultyDetails);
    }

    // Other methods (e.g., select course, list students in a course, etc.)
}
