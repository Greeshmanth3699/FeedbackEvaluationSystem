<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="baseHeader.jsp" %> <!-- Includes the header.jsp here -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Institutional Feedback Evaluation System</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

        /* Global styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-color: #7d2ae8; /* Same background as login page */
            padding: 30px;
        }

        /* Container */
        .container {
            position: relative;
            max-width: 850px;
            width: 100%;
            background: #fff;
            padding: 40px 30px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            border-radius: 10px;
        }

        /* Header */
        h1 {
            font-size: 2.2em;
            color: #333;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 1.8em;
            color: #444;
            margin-bottom: 15px;
        }

        /* Description */
        p {
            font-size: 1.2em;
            color: #666;
            margin-bottom: 25px;
        }

        /* Get Started Button */
        .btn-get-started {
            background-color: #7d2ae8;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            font-size: 1.1em;
            transition: background-color 0.4s ease;
        }

        .btn-get-started:hover {
            background-color: #5b13b9;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 15px;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            font-size: 0.9em;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="container">
        <h1>Welcome to the Student Feedback System</h1>
        <h2>Improve Your Learning Experience</h2>
        <p>Provide valuable feedback on courses, instructors, and institutional services to enhance the quality of education.</p>
        <a class="btn-get-started" href="/login">Get Started</a>
    </div>

    <footer>
        <p>&copy; 2024 Student Feedback System. All Rights Reserved.</p>
    </footer>
</body>
</html>
