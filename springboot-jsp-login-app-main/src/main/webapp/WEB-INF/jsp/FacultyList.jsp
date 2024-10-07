<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .faculty-img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }

        .faculty-details {
            display: flex;
            align-items: center;
        }

        .faculty-name {
            margin-left: 10px;
        }

        .course-list {
            list-style-type: none;
            padding: 0;
        }

        .course-list li {
            background-color: #e7f3e7;
            padding: 8px;
            margin: 4px 0;
            border-radius: 4px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Faculty List</h1>
    <table>
        <thead>
            <tr>
                <th>Faculty Image</th>
                <th>Faculty Name</th>
                <th>Faculty ID</th>
                <th>Department</th>
                <th>Courses</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><img src="<%= request.getContextPath() %>/images/FacultyLogo.png" alt="Faculty Logo"></td>
                <td>
                    <div class="faculty-details">
                        <span class="faculty-name">Dr. John Smith</span>
                    </div>
                </td>
                <td>FAC001</td>
                <td>Computer Science</td>
                <td>
                    <ul class="course-list">
                        <li>Data Structures</li>
                        <li>Operating Systems</li>
                        <li>Algorithms</li>
                    </ul>
                </td>
                <td>john.smith@example.com</td>
            </tr>

            <tr>
                <td><img src="<%= request.getContextPath() %>/images/FacultyLogo.png" alt="Faculty Logo"></td>
                <td>
                    <div class="faculty-details">
                        <span class="faculty-name">Prof. Jane Doe</span>
                    </div>
                </td>
                <td>FAC002</td>
                <td>Electronics</td>
                <td>
                    <ul class="course-list">
                        <li>Embedded Systems</li>
                        <li>Microcontrollers</li>
                    </ul>
                </td>
                <td>jane.doe@example.com</td>
            </tr>

            <tr>
                <td><img src="<%= request.getContextPath() %>/images/FacultyLogo.png" alt="Faculty Logo"></td>
                <td>
                    <div class="faculty-details">
                        <span class="faculty-name">Dr. Alan Turner</span>
                    </div>
                </td>
                <td>FAC003</td>
                <td>Mechanical Engineering</td>
                <td>
                    <ul class="course-list">
                        <li>Thermodynamics</li>
                        <li>Fluid Mechanics</li>
                    </ul>
                </td>
                <td>alan.turner@example.com</td>
            </tr>
        </tbody>
    </table>
</div>

</body>
</html>
