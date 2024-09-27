<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unified Navigation and Sidebar</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" rel="stylesheet">

    <!-- Internal CSS for combined layout -->
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
      }

      body {
        height: 100vh;
        background: #c1f7f5;
        padding-top: 80px; /* Adjusted for the fixed navigation bar */
      }

      /* Navigation Menu */
      .nav-links {
        display: flex;
        align-items: center;
        background: rgba(255, 255, 255, 0.8);
        padding: 20px 15px;
        border-radius: 12px;
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        position: fixed;
        top: 0;
        left: 110px; /* Adjusted to leave space for the sidebar */
        right: 0;
        margin: 0 auto;
        z-index: 1000;
      }

      .nav-links li {
        list-style: none;
        margin: 0 12px;
      }

      .nav-links li a {
        position: relative;
        color: #333;
        font-size: 18px;
        font-weight: 500;
        padding: 6px 0;
        text-decoration: none;
      }

      .nav-links li a:before {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        height: 3px;
        width: 0%;
        background: #34efdf;
        border-radius: 12px;
        transition: all 0.4s ease;
      }

      .nav-links li a:hover:before {
        width: 100%;
      }

      .nav-links li.center a:before {
        left: 50%;
        transform: translateX(-50%);
      }

      .nav-links li.upward a:before {
        width: 100%;
        bottom: -5px;
        opacity: 0;
      }

      .nav-links li.upward a:hover:before {
        bottom: 0px;
        opacity: 1;
      }

      .nav-links li.forward a:before {
        width: 100%;
        transform: scaleX(0);
        transform-origin: right;
        transition: transform 0.4s ease;
      }

      .nav-links li.forward a:hover:before {
        transform: scaleX(1);
        transform-origin: left;
      }

      /* Sidebar */
      .sidebar {
        position: fixed;
        top: 0;
        left: 0;
        width: 110px;
        height: 100%;
        display: flex;
        align-items: center;
        flex-direction: column;
        background: rgba(255, 255, 255, 0.2);
        backdrop-filter: blur(17px);
        border-right: 1px solid rgba(255, 255, 255, 0.7);
        transition: width 0.3s ease;
      }

      .sidebar:hover {
        width: 260px;
      }

      .sidebar .logo {
        color: #000;
        display: flex;
        align-items: center;
        padding: 25px 10px 15px;
      }

      .logo img {
        width: 43px;
        border-radius: 50%;
      }

      .logo h2 {
        font-size: 1.15rem;
        font-weight: 600;
        margin-left: 15px;
        display: none;
      }

      .sidebar:hover .logo h2 {
        display: block;
      }

      .sidebar .links {
        list-style: none;
        margin-top: 20px;
        overflow-y: auto;
        scrollbar-width: none;
        height: calc(100% - 140px);
      }

      .sidebar .links::-webkit-scrollbar {
        display: none;
      }

      .links li {
        display: flex;
        border-radius: 4px;
        align-items: center;
      }

      .links li:hover {
        cursor: pointer;
        background: #fff;
      }

      .links h4 {
        color: #222;
        font-weight: 500;
        display: none;
        margin-bottom: 10px;
      }

      .sidebar:hover .links h4 {
        display: block;
      }

      .links hr {
        margin: 10px 8px;
        border: 1px solid #4c4c4c;
      }

      .sidebar:hover .links hr {
        border-color: transparent;
      }

      .links li span {
        padding: 12px 10px;
      }

      .links li a {
        padding: 10px;
        color: #000;
        display: none;
        font-weight: 500;
        white-space: nowrap;
        text-decoration: none;
      }

      .sidebar:hover .links li a {
        display: block;
      }

      .links .logout-link {
        margin-top: 20px;
      }

    </style>
  </head>

  <body>
    <!-- Sidebar -->
    <aside class="sidebar">
      <div class="logo">
        <img src="<%= request.getContextPath() %>/images/feedback.png" alt="logo"> <!-- Placeholder for logo -->
        <h2>Vchara</h2>
      </div>
      <ul class="links">
        <h4>Main Menu</h4>
        <li>
          <span class="material-symbols-outlined">dashboard</span>
          <a href="#">Dashboard</a>
        </li>
        <li>
          <span class="material-symbols-outlined">show_chart</span>
          <a href="#">Revenue</a>
        </li>
        <li>
          <span class="material-symbols-outlined">flag</span>
          <a href="#">Reports</a>
        </li>
        <hr>
        <h4>Advanced</h4>
        <li>
          <span class="material-symbols-outlined">person</span>
          <a href="feedbackform">Designer</a>
        </li>
        <li>
          <span class="material-symbols-outlined">group</span>
          <a href="#">Developer</a>
        </li>
        <li>
          <span class="material-symbols-outlined">ambient_screen</span>
          <a href="#">Magic Build</a>
        </li>
        <li>
          <span class="material-symbols-outlined">pacemaker</span>
          <a href="#">Theme Maker</a>
        </li>
        <li>
          <span class="material-symbols-outlined">monitoring</span>
          <a href="#">Analytic</a>
        </li>
        <hr>
        <h4>Account</h4>
        <li>
          <span class="material-symbols-outlined">bar_chart</span>
          <a href="#">Overview</a>
        </li>
        <li>
          <span class="material-symbols-outlined">mail</span>
          <a href="#">Message</a>
        </li>
        <li>
          <span class="material-symbols-outlined">settings</span>
          <a href="#">Settings</a>
        </li>
        <li class="logout-link">
          <span class="material-symbols-outlined">logout</span>
          <a href="/">Logout</a>
        </li>
      </ul>
    </aside>

    <!-- Navigation Bar -->
    <ul class="nav-links">
      <li><a href="#">Dashboard</a></li>
      <li class="center"><a href="#">Portfolio</a></li>
      <li class="upward"><a href="#">Services</a></li>
      <li class="forward"><a href="#">Feedback</a></li>
    </ul>

  </body>
</html>
