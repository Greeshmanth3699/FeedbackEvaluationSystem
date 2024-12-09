import React from 'react';
// import ResponsiveAppBar from '../ResponsiveAppBar';
import ResponsiveAppBarS from '../ResponsiveAppBarS';
import backgroundImage from '../../assets/student-bg.jpg';

const StudentHome = () => {
  return (
    <div
      style={{
        backgroundImage: `url(${backgroundImage})`,
        backgroundSize: 'cover', // Ensures the image covers the whole area
        backgroundPosition: 'center', // Centers the image
        height: '100vh', // Full viewport height
        color: 'white', // Text color to contrast with the background
      }}
    >
      <ResponsiveAppBarS />
      <div style={{ marginTop: '100px', textAlign: 'center' }}>
        <h1>Welcome to Student Home Page</h1>
        {/* Add any student-specific content here */}
      </div>
    </div>
  );
};

export default StudentHome;
