<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile Form</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            padding: 20px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 32px;
            font-weight: 600;
            color: #1b5e20;
        }

        form {
            padding: 20px;
            background-color: #f7f7f7;
            border-radius: 10px;
            margin-bottom: 30px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 14px;
            font-weight: 600;
            color: #1b5e20;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="date"],
        input[type="file"],
        select {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus,
        select:focus {
            border-color: #1b5e20;
            outline: none;
        }

        input[type="submit"] {
            background-color: #1b5e20;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #145a14;
        }

        h2 {
            margin-top: 40px;
            margin-bottom: 20px;
            font-size: 28px;
            font-weight: 600;
            color: #333;
            text-align: center;
        }

        .profile {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 15px;
            margin-top: 15px;
            display: flex;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .profile img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            object-fit: cover;
            margin-right: 20px;
        }

        .profile-details {
            display: flex;
            flex-direction: column;
        }

        .profile-details span {
            font-size: 14px;
            margin: 4px 0;
            color: #333;
        }

        .profile-details span strong {
            color: #1b5e20;
            font-weight: 600;
        }
    </style>
</head>

<body>

<div class="container">
    <h1>Student Profile Form</h1>
    <form id="studentForm">
        <!-- Student details -->
        <label for="studentName">Student Name:</label>
        <input type="text" id="studentName" placeholder="Enter student's full name" required>

        <label for="rollNumber">Roll Number:</label>
        <input type="number" id="rollNumber" placeholder="Enter roll number" required>

        <label for="email">Email:</label>
        <input type="email" id="email" placeholder="Enter email address" required>

        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" placeholder="Enter phone number" required>

        <label for="department">Department:</label>
        <input type="text" id="department" placeholder="Enter department name" required>

        <label for="course">Course:</label>
        <input type="text" id="course" placeholder="Enter course name" required>

        <label for="year">Year of Study:</label>
        <input type="text" id="year" placeholder="Enter year of study" required>

        <label for="cgpa">CGPA:</label>
        <input type="number" step="0.01" id="cgpa" placeholder="Enter current CGPA" required>

        <label for="address">Address:</label>
        <input type="text" id="address" placeholder="Enter home address" required>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" required>

        <label for="gender">Gender:</label>
        <select id="gender" required>
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>

        <label for="nationality">Nationality:</label>
        <input type="text" id="nationality" placeholder="Enter nationality" required>

        <label for="hobbies">Hobbies:</label>
        <input type="text" id="hobbies" placeholder="Enter hobbies" required>

        <label for="parentContact">Parent's Contact Number:</label>
        <input type="text" id="parentContact" placeholder="Enter parent's contact number" required>

        <label for="studentImage">Student Image:</label>
        <input type="file" id="studentImage" accept="image/*" required>

        <input type="submit" value="Add Student Profile">
    </form>

    <h2>Student Profiles</h2>
    <div id="profilesContainer"></div>
</div>

<script>
    document.getElementById('studentForm').addEventListener('submit', function (e) {
        e.preventDefault();

        // Retrieve form data
        const name = document.getElementById('studentName').value;
        const rollNumber = document.getElementById('rollNumber').value;
        const email = document.getElementById('email').value;
        const phoneNumber = document.getElementById('phoneNumber').value;
        const department = document.getElementById('department').value;
        const course = document.getElementById('course').value;
        const year = document.getElementById('year').value;
        const cgpa = document.getElementById('cgpa').value;
        const address = document.getElementById('address').value;
        const dob = document.getElementById('dob').value;
        const gender = document.getElementById('gender').value;
        const nationality = document.getElementById('nationality').value;
        const hobbies = document.getElementById('hobbies').value;
        const parentContact = document.getElementById('parentContact').value;
        const image = document.getElementById('studentImage').files[0];

        // Create a new profile element
        const profile = document.createElement('div');
        profile.classList.add('profile');

        // Create the image element
        const reader = new FileReader();
        reader.onload = function (e) {
            const imageElement = document.createElement('img');
            imageElement.src = e.target.result;
            profile.appendChild(imageElement);
        };
        reader.readAsDataURL(image);

        // Create the profile details element
        const details = document.createElement('div');
        details.classList.add('profile-details');
        details.innerHTML = `
            <span><strong>Name:</strong> ${name}</span>
            <span><strong>Roll Number:</strong> ${rollNumber}</span>
            <span><strong>Email:</strong> ${email}</span>
            <span><strong>Phone:</strong> ${phoneNumber}</span>
            <span><strong>Department:</strong> ${department}</span>
            <span><strong>Course:</strong> ${course}</span>
            <span><strong>Year:</strong> ${year}</span>
            <span><strong>CGPA:</strong> ${cgpa}</span>
            <span><strong>Address:</strong> ${address}</span>
            <span><strong>DOB:</strong> ${dob}</span>
            <span><strong>Gender:</strong> ${gender}</span>
            <span><strong>Nationality:</strong> ${nationality}</span>
            <span><strong>Hobbies:</strong> ${hobbies}</span>
            <span><strong>Parent's Contact:</strong> ${parentContact}</span>
        `;
        profile.appendChild(details);

        // Append the profile to the container
        document.getElementById('profilesContainer').appendChild(profile);

        // Clear the form
        document.getElementById('studentForm').reset();
    });
</script>

</body>
</html>
