package com.example.demo.ctrl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.Feedback;
import com.example.demo.service.FeedbackService;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/feedback")
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    // Endpoint to send feedback
    @PostMapping("/send")
    public String sendFeedback(@RequestBody Feedback feedback) {
        feedbackService.saveFeedback(feedback);
        return "Feedback sent successfully!";
    }

    // Endpoint for students to view their sent feedback
    @GetMapping("/student/{studentId}")
    public List<Feedback> getStudentFeedback(@PathVariable Long studentId) {
        return feedbackService.getStudentFeedback(studentId);
    }

    // Endpoint for faculty to view their sent feedback
    @GetMapping("/faculty/{facultyId}")
    public List<Feedback> getFacultyFeedback(@PathVariable Long facultyId) {
        return feedbackService.getFacultyFeedback(facultyId);
    }

    // Endpoint for admin to view all feedback (from students and faculty)
    @GetMapping("/admin")
    public List<Feedback> getAllFeedback() {
        return feedbackService.getAllFeedback();
    }
    @GetMapping("/admin/received")
    public List<Feedback> getAdminFeedback() {
        return feedbackService.getAdminFeedback();
    }
}
