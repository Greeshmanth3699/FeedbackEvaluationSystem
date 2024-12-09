package com.example.demo.model;



import jakarta.persistence.*;

@Entity
public class Feedback {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 1000)
    private String feedback;

    private String feedbackType; // 'student' or 'faculty'
    private Long senderId; // Student or Faculty ID
    private Long recipientId; // Admin or Faculty ID for student feedback

    public Feedback(String feedback, String feedbackType, Long senderId, Long recipientId) {
        this.feedback = feedback;
        this.feedbackType = feedbackType;
        this.senderId = senderId;
        this.recipientId = recipientId;
    }
    public Feedback() {
    }

    // Getters and Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getFeedback() { return feedback; }
    public void setFeedback(String feedback) { this.feedback = feedback; }

    public String getFeedbackType() { return feedbackType; }
    public void setFeedbackType(String feedbackType) { this.feedbackType = feedbackType; }

    public Long getSenderId() { return senderId; }
    public void setSenderId(Long senderId) { this.senderId = senderId; }

    public Long getRecipientId() { return recipientId; }
    public void setRecipientId(Long recipientId) { this.recipientId = recipientId; }
}
