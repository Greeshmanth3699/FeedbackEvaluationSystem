import React from 'react';
import './Basic.css'; 
import basisPhoto from '../assets/student-feedback-app.jpg';

const Basic = ({ children }) => {
  return (
    <div className="basic-container">
      <nav className="navbar">
        <ul>
          <li><a href="/">Home</a></li>
          <li><a href="/AboutPage">About</a></li>
          <li><a href="/TeamPage">Team</a></li>
          <li><a href="/ContactPage">Contact</a></li>
          <li><a href="/Signup">Login</a></li>
        </ul>
      </nav>

      <div className="main-content">
        {children ? (
          children
        ) : (
          <>
            <h1>Welcome to the Student Feedback System</h1>
            <p>Providing a platform to share valuable feedback efficiently.</p>
            <br />
            <img src={basisPhoto} alt="Student Feedback System" />
            <br />
          </>
        )}
      </div>
    </div>
  );
};

export default Basic;