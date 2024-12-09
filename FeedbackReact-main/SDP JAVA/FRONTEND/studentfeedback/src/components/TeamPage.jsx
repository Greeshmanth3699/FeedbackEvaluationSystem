import React from "react";
import { Container, Grid, Card, CardContent, CardMedia, Typography, Box } from "@mui/material";
import PeopleIcon from "@mui/icons-material/People";
import EmailIcon from "@mui/icons-material/Email";
import LinkedInIcon from "@mui/icons-material/LinkedIn";
import ag from '../assets/arvapalli-greeshmanth.jpg';
import js from '../assets/jai-sudharsh.jpg';
import ap from '../assets/atmakuru-prakash.jpg';

const teamMembers = [
  {
    name: "Arvapalli Greeshmanth",
    role: "Frontend Developer",
    image: ag,
    email: "2200032251@kluniversity.in",
    linkedin: "https://www.linkedin.com/in/arvapalli-greeshmanth/",
  },
  {
    name: "Jai Sudharsh",
    role: "Lead",
    image: js,
    email: "2200032246@kluniversity.in",
    linkedin: "https://www.linkedin.com/in/mattupalli-jai-sudharsh/",
  },
  {
    name: "Atmakuru Prakash",
    role: "Backend Developer",
    image: ap,
    email: "2200031591",
    linkedin: "https://www.linkedin.com/in/atmakuru-prakash/",
  },
];

const TeamPage = () => {
  return (
    <Container sx={{ marginTop: 4 }}>
      {/* Page Title */}
      <Box textAlign="center" marginBottom={4}>
        <Typography variant="h4" component="h1" gutterBottom>
          <PeopleIcon fontSize="large" color="primary" /> Meet Our Team
        </Typography>
        <Typography variant="body1" color="textSecondary">
          A group of passionate individuals dedicated to making a difference.
        </Typography>
      </Box>

      {/* Team Members */}
      <Grid container spacing={4} justifyContent="center">
        {teamMembers.map((member, index) => (
          <Grid item xs={12} sm={6} md={4} key={index}>
            <Card sx={{ textAlign: "center", padding: 2 }}>
              <CardMedia
                component="img"
                height="150"
                image={member.image}
                alt={member.name}
                sx={{ borderRadius: "50%", margin: "0 auto", width: "150px", height: "150px" }}
              />
              <CardContent>
                <Typography variant="h6" gutterBottom>
                  {member.name}
                </Typography>
                <Typography variant="body2" color="textSecondary" gutterBottom>
                  {member.role}
                </Typography>
                <Box sx={{ display: "flex", justifyContent: "center", gap: 2 }}>
                  <a href={`mailto:${member.email}`} target="_blank" rel="noopener noreferrer">
                    <EmailIcon color="primary" />
                  </a>
                  <a href={member.linkedin} target="_blank" rel="noopener noreferrer">
                    <LinkedInIcon color="primary" />
                  </a>
                </Box>
              </CardContent>
            </Card>
          </Grid>
        ))}
      </Grid>
    </Container>
  );
};

export default TeamPage;
