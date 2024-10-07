<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Vchara</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Base page styles */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .header {
            display: flex;
            align-items: center;
            padding: 10px 20px;
            position: absolute; /* Positioned at the top left corner */
            top: 0;
            left: 0;
            background-color: transparent; /* No background color */
            z-index: 1000; /* Ensures it stays above other content */
        }

        .header img {
            height: 40px; /* Adjusted height */
            width: 40px; /* Adjusted width */
            margin-right: 10px; /* Space between icon and name */
        }

        .header h1 {
            font-size: 1.5em; /* Smaller font size */
            color: black; /* Change color if needed */
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="header">
        <!-- Icon on the top left corner -->
        <img src="<%= request.getContextPath() %>/images/ProjectLogo.png" alt="Vchara Logo">
        <!-- Name next to the icon -->
        <h1>Vchara</h1>
    </div>
</body>
</html>
