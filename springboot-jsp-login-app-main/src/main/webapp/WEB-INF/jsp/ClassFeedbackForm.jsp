<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Class Feedback Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

        body {
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
            background-color: #e0f7fa;
            font-family: 'Poppins', sans-serif;
        }

        .form-container {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
            padding: 20px;
            border-radius: 10px;
            width: 500px;
        }

        h1 {
            text-align: center;
            color: #007bff;
            font-size: 2em;
            font-weight: 700;
        }

        h5 {
            text-align: center;
            color: #0056b3;
            font-size: 1.2em;
            font-weight: 600;
            margin-bottom: 20px;
        }

        form {
            max-width: 100%;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 16px;
            color: #007bff;
        }

        select, input[type="radio"] {
            margin-bottom: 12px;
        }

        select {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #007bff;
        }

        .radio-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 16px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.2s ease-in-out;
        }

        button:hover {
            background-color: #0056b3;
        }

        hr {
            border: 1px solid #007bff;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <div class="form-container">
        <h1>Student Feedback</h1>
        <h5>Please provide your feedback below:</h5>
        <form method="post" action="action.php">
            <p>Semester: 6th</p>
            <hr>
            <label for="sub">Subject</label>
            <select name="sub" id="sub">
                <option value="ACA">ACA</option>
                <option value="PPL">PPL</option>
                <option value="SEPM">SEPM</option>
                <option value="CN">CN</option>
                <option value="IOT">IOT</option>
            </select>

            <label for="teachername">Teacher Name</label>
            <select name="teachername" id="teachername">
                <option>Sudeep Sharma</option>
                <option>Abhilasa Panday</option>
                <option>Prakriti Kapoor</option>
                <option>Malika Roy</option>
                <option>Amresh Singh</option>
            </select>

            <label>Personality</label>
            <div class="radio-group">
                <input type="radio" name="f1" value="1" checked> Bad
                <input type="radio" name="f1" value="2"> Average
                <input type="radio" name="f1" value="3"> Good
                <input type="radio" name="f1" value="4"> Very Good
                <input type="radio" name="f1" value="5"> Excellent
            </div>

            <label>Subjective Knowledge</label>
            <div class="radio-group">
                <input type="radio" name="f2" value="1" checked> Bad
                <input type="radio" name="f2" value="2"> Average
                <input type="radio" name="f2" value="3"> Good
                <input type="radio" name="f2" value="4"> Very Good
                <input type="radio" name="f2" value="5"> Excellent
            </div>

            <label>Attitude towards College Property</label>
            <div class="radio-group">
                <input type="radio" name="f3" value="1" checked> Bad
                <input type="radio" name="f3" value="2"> Average
                <input type="radio" name="f3" value="3"> Good
                <input type="radio" name="f3" value="4"> Very Good
                <input type="radio" name="f3" value="5"> Excellent
            </div>

            <label>Amount of Knowledge You Gained</label>
            <div class="radio-group">
                <input type="radio" name="f4" value="1" checked> Bad
                <input type="radio" name="f4" value="2"> Average
                <input type="radio" name="f4" value="3"> Good
                <input type="radio" name="f4" value="4"> Very Good
                <input type="radio" name="f4" value="5"> Excellent
            </div>

            <label>Punctuality in Class</label>
            <div class="radio-group">
                <input type="radio" name="f5" value="1" checked> Bad
                <input type="radio" name="f5" value="2"> Average
                <input type="radio" name="f5" value="3"> Good
                <input type="radio" name="f5" value="4"> Very Good
                <input type="radio" name="f5" value="5"> Excellent
            </div>

            <label>Control Over Classroom</label>
            <div class="radio-group">
                <input type="radio" name="f6" value="1" checked> Bad
                <input type="radio" name="f6" value="2"> Average
                <input type="radio" name="f6" value="3"> Good
                <input type="radio" name="f6" value="4"> Very Good
                <input type="radio" name="f6" value="5"> Excellent
            </div>

            <label>Way of Teaching</label>
            <div class="radio-group">
                <input type="radio" name="f7" value="1" checked> Bad
                <input type="radio" name="f7" value="2"> Average
                <input type="radio" name="f7" value="3"> Good
                <input type="radio" name="f7" value="4"> Very Good
                <input type="radio" name="f7" value="5"> Excellent
            </div>

            <button type="submit">Submit</button>
        </form>
    </div>
</body>

</html>
