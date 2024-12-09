package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Feedback;
import com.example.demo.repo.FeedbackRepository;

import java.util.List;

@Service
public class FeedbackService {

    @Autowired
    private FeedbackRepository feedbackRepository;

    // Method to save feedback
    public Feedback saveFeedback(Feedback feedback) {
        return feedbackRepository.save(feedback);
    }

    // Method for students to get their sent feedback
    public List<Feedback> getStudentFeedback(Long studentId) {
        return feedbackRepository.findBySenderIdAndFeedbackType(studentId, "student");
    }

    // Method for faculty to get their sent feedback
    public List<Feedback> getFacultyFeedback(Long facultyId) {
        return feedbackRepository.findBySenderIdAndFeedbackType(facultyId, "faculty");
    }

    // Method for admin to get all feedback (from students and faculty)
    public List<Feedback> getAllFeedback() {
        return feedbackRepository.findAll();
    }
    public List<Feedback> getAdminFeedback() {
        return feedbackRepository.findByRecipientId(0L); // recipientId is 0 for admin feedback
    }
    // You can add more business logic methods here as needed
}
