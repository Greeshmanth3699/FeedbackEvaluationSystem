<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Analysis Page</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

        body {
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
            background-color: #bde5d2;
            font-family: 'Poppins', sans-serif;
        }

        h1 {
            text-align: center;
            color: green;
            font-size: 36px;
            font-weight: 700;
        }

        .container {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(36, 67, 40, 0.8);
            padding: 20px;
            border-radius: 10px;
            width: 80%;
            max-width: 600px;
            text-align: center;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 17px;
            color: green;
            font-weight: 600;
        }

        input[type="number"], input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 12px;
            box-sizing: border-box;
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: #368b44;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-size: 15px;
            transition: .2s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0a6808;
            transform: translateY(-5px);
        }

        .chart-container {
            margin-top: 30px;
            display: flex;
            justify-content: space-around;
        }

        canvas {
            width: 100%;
            max-width: 400px;
            height: auto;
        }
    </style>
</head>

<body>

<div class="container">
    <h1>Student Analysis</h1>
    <form id="analysisForm">
        <label for="marks">Average Marks (%)</label>
        <input type="number" id="marks" placeholder="Enter average marks">

        <label for="strength">Student Strength</label>
        <input type="number" id="strength" placeholder="Enter student strength">

        <label for="attendance">Attendance (%)</label>
        <input type="number" id="attendance" placeholder="Enter attendance percentage">

        <label for="courses">Total Courses</label>
        <input type="number" id="courses" placeholder="Enter total courses offered">

        <label for="feedback">Positive Feedback (%)</label>
        <input type="number" id="feedback" placeholder="Enter positive feedback percentage">

        <input type="submit" value="Generate Graphs">
    </form>

    <div class="chart-container">
        <div>
            <h2 style="color:green; font-size:18px; margin-top:20px;">Bar Graph - Overview</h2>
            <canvas id="barChart"></canvas>
        </div>
        <div>
            <h2 style="color:green; font-size:18px; margin-top:20px;">Pie Graph - Proportions</h2>
            <canvas id="pieChart"></canvas>
        </div>
    </div>
</div>

<script>
    document.getElementById('analysisForm').addEventListener('submit', function (e) {
        e.preventDefault();

        var marks = document.getElementById('marks').value;
        var strength = document.getElementById('strength').value;
        var attendance = document.getElementById('attendance').value;
        var courses = document.getElementById('courses').value;
        var feedback = document.getElementById('feedback').value;

        var barData = {
            labels: ['Average Marks (%)', 'Student Strength', 'Attendance (%)', 'Courses', 'Positive Feedback (%)'],
            datasets: [{
                label: 'Student Analysis Overview',
                data: [marks, strength, attendance, courses, feedback],
                backgroundColor: ['rgba(75, 192, 192, 0.6)', 'rgba(54, 162, 235, 0.6)', 'rgba(255, 206, 86, 0.6)', 'rgba(153, 102, 255, 0.6)', 'rgba(255, 159, 64, 0.6)'],
                borderColor: ['rgba(75, 192, 192, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)'],
                borderWidth: 1
            }]
        };

        var pieData = {
            labels: ['Marks', 'Strength', 'Attendance', 'Courses', 'Feedback'],
            datasets: [{
                data: [marks, strength, attendance, courses, feedback],
                backgroundColor: ['rgba(75, 192, 192, 0.6)', 'rgba(54, 162, 235, 0.6)', 'rgba(255, 206, 86, 0.6)', 'rgba(153, 102, 255, 0.6)', 'rgba(255, 159, 64, 0.6)']
            }]
        };

        var ctxBar = document.getElementById('barChart').getContext('2d');
        new Chart(ctxBar, {
            type: 'bar',
            data: barData,
            options: {
                scales: { y: { beginAtZero: true } }
            }
        });

        var ctxPie = document.getElementById('pieChart').getContext('2d');
        new Chart(ctxPie, { type: 'pie', data: pieData });
    });
</script>

</body>

</html>
