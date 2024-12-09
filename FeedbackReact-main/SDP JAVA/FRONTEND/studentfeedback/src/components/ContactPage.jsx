import React, { useRef } from "react";
import emailjs from "@emailjs/browser";
import {
  Container,
  Typography,
  Box,
  Grid,
  Card,
  CardContent,
  TextField,
  Button,
} from "@mui/material";
import EmailIcon from "@mui/icons-material/Email";
import PhoneIcon from "@mui/icons-material/Phone";
import LocationOnIcon from "@mui/icons-material/LocationOn";

const ContactPageContent = () => {
  const form = useRef();

  const sendEmail = (e) => {
    e.preventDefault();

    emailjs
      .sendForm("service_zlz4d4m", "template_l9inx9s", form.current, "pKmYULOEnmqMCuZUG")
      .then(
        () => {
          alert("Message sent successfully!");
          form.current.reset(); // Reset the form after successful submission
        },
        (error) => {
          console.error("Error sending email:", error);
          alert("Failed to send the message. Please try again.");
        }
      );
  };

  return (
    <Container sx={{ marginTop: 4 }}>
      {/* Page Title */}
      <Box textAlign="center" marginBottom={4}>
        <Typography variant="h4" component="h1" gutterBottom>
          Contact Us
        </Typography>
        <Typography variant="body1" color="textSecondary">
          We'd love to hear from you! Reach out with any questions or feedback.
        </Typography>
      </Box>

      {/* Contact Information Section */}
      <Grid container spacing={4}>
        <Grid item xs={12} sm={4}>
          <Card sx={{ textAlign: "center", padding: 2 }}>
            <EmailIcon fontSize="large" color="primary" />
            <CardContent>
              <Typography variant="h6">Email</Typography>
              <Typography variant="body2" color="textSecondary">
                support@studentfeedback.com
              </Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item xs={12} sm={4}>
          <Card sx={{ textAlign: "center", padding: 2 }}>
            <PhoneIcon fontSize="large" color="primary" />
            <CardContent>
              <Typography variant="h6">Phone</Typography>
              <Typography variant="body2" color="textSecondary">
                +91-xxxxx-xxxxx
              </Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item xs={12} sm={4}>
          <Card sx={{ textAlign: "center", padding: 2 }}>
            <LocationOnIcon fontSize="large" color="primary" />
            <CardContent>
              <Typography variant="h6">Address</Typography>
              <Typography variant="body2" color="textSecondary">
                K L University, Vaddeswaram.
              </Typography>
            </CardContent>
          </Card>
        </Grid>
      </Grid>

      {/* Contact Form */}
      <Box
        component="form"
        ref={form}
        onSubmit={sendEmail}
        sx={{
          marginTop: 6,
          display: "flex",
          flexDirection: "column",
          gap: 2,
          maxWidth: "600px",
          margin: "0 auto",
        }}
      >
        <Typography variant="h5" component="h2" gutterBottom>
          Send Us a Message
        </Typography>
        <TextField label="Your Name" name="user_name" variant="outlined" fullWidth required />
        <TextField label="Your Email" name="user_email" variant="outlined" fullWidth required />
        <TextField
          label="Your Message"
          name="message"
          variant="outlined"
          multiline
          rows={4}
          fullWidth
          required
        />
        <Button type="submit" variant="contained" color="primary" size="large">
          Submit
        </Button>
      </Box>
    </Container>
  );
};

export default ContactPageContent;