package com.example.demo.repo;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Feedback;

import java.util.List;

public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
    List<Feedback> findBySenderIdAndFeedbackType(Long senderId, String feedbackType);
    List<Feedback> findByRecipientId(Long recipientId);
}
