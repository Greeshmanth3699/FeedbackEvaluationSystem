import React from "react";
import { Box, Paper, Typography } from "@mui/material";
import ResponsiveAppBarS from "../ResponsiveAppBarS";

const FacultyList = () => {
  const facultyData = [
    { name: "KONERU SATAYANARAYANA", designation: "PRESIDENT" },
    { name: "HAVISH KONERU", designation: "VICE PRESIDENT" },
    { name: "PARDHASARADHI VARMA", designation: "VICE CHANCELLOR" },
    { name: "KRR", designation: "PRO VICE CHANCELLOR" },
    { name: "HARI KIRAN VEGE", designation: "DEAN OF ACADEMICS" },
    { name: "SENTIL.A", designation: "HONORS HEAD OF DEPARTMENT" },
    { name: "PAVAN KUMAR", designation: "HEAD OF DEPARTMENT" },
    { name: "VENU BABU", designation: "DEPUTY HOD" },
  ];

  return (
    <div
      style={{
        backgroundColor: "#ffffff", // White background
        minHeight: "100vh",
      }}
    >
      {/* Navigation Bar */}
      <ResponsiveAppBarS />

      {/* Faculty List Content */}
      <Box
        sx={{
          width: "90%",
          maxWidth: "600px",
          margin: "100px auto 2rem auto", // Push content below the navbar
          textAlign: "center",
        }}
      >
        <Typography variant="h4" sx={{ marginBottom: "1.5rem", color: "#3f51b5" }}>
          FACULTY BODY
        </Typography>
        <Box
          sx={{
            position: "relative",
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
          }}
        >
          {facultyData.map((faculty, index) => (
            <Paper
              key={index}
              elevation={3}
              sx={{
                width: "100%",
                padding: "1rem",
                marginBottom: "-1.5rem", // Overlaps the cards to create a stack effect
                backgroundColor: "#ffffff",
                zIndex: facultyData.length - index, // Ensures correct stacking order
                transform: `translateY(${index * 10}px)`, // Adds stacking effect
                transition: "transform 0.2s",
                "&:hover": {
                  transform: `translateY(${index * 10 - 5}px) scale(1.02)`,
                  boxShadow: "0px 6px 15px rgba(0, 0, 0, 0.2)",
                },
              }}
            >
              <Typography variant="h6" sx={{ fontWeight: "bold", color: "#000" }}>
                {faculty.name}
              </Typography>
              <Typography variant="body1" color="textSecondary">
                {faculty.designation}
              </Typography>
            </Paper>
          ))}
        </Box>
      </Box>
    </div>
  );
};

export default FacultyList;
