<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Feedback Form</title>
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
            background-color: #e0f7f1;
            font-family: 'Poppins', sans-serif;
        }

        .form-container {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(36, 67, 40, 0.8);
            padding: 20px;
            border-radius: 8px;
            width: 500px;
        }

        h1, h3 {
            text-align: center;
            color: green;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 17px;
            color: green;
            font-weight: 600;
        }

        input,
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            border-radius: 10px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #368b44;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            width: 100%;
            font-size: 15px;
            transition: 0.2s linear;
        }

        button:hover {
            background-color: #0a6808;
            transform: translateY(-5px);
        }
    </style>
</head>

<body>
    <h1>Course Feedback Form</h1>
    <h3>Please help us improve our courses by filling out this form</h3>
    <div class="form-container">
        <form method="post" action="//submit.form">
            <div style="display: flex;">
                <div style="width: 49%; margin-right: 2%;">
                    <label for="data_3"><i class="fa fa-user"></i> Teacher / Instructor First Name</label>
                    <input type="text" id="data_3" name="data_3" required>
                </div>
                <div style="width: 49%;">
                    <label for="data_4"><i class="fa fa-user"></i> Teacher / Instructor Last Name</label>
                    <input type="text" id="data_4" name="data_4" required>
                </div>
            </div>

            <div style="display: flex;">
                <div style="width: 49%; margin-right: 2%;">
                    <label for="data_5"><i class="fa fa-book"></i> Subject</label>
                    <input type="text" id="data_5" name="data_5" required>
                </div>
                <div style="width: 49%;">
                    <label for="data_6"><i class="fa fa-code"></i> Course Code</label>
                    <input type="text" id="data_6" name="data_6" required>
                </div>
            </div>

            <label for="data_7"><i class="fa fa-graduation-cap"></i> Why did you choose this course?</label>
            <select id="data_7" name="data_7" required>
                <option value="Degree requirement">Degree requirement</option>
                <option value="Personal interest">Personal interest</option>
            </select>

            <label for="data_9"><i class="fa fa-info-circle"></i> Level of knowledge at start of course</label>
            <select id="data_9" name="data_9" required>
                <option value="Very good">Very good</option>
                <option value="Good">Good</option>
                <option value="Fair">Fair</option>
                <option value="Poor">Poor</option>
                <option value="Very poor">Very poor</option>
            </select>

            <label for="data_10"><i class="fa fa-lightbulb"></i> Level of effort invested in course</label>
            <select id="data_10" name="data_10" required>
                <option value="Very good">Very good</option>
                <option value="Good">Good</option>
                <option value="Fair">Fair</option>
                <option value="Poor">Poor</option>
                <option value="Very poor">Very poor</option>
            </select>

            <label for="data_11"><i class="fa fa-graduation-cap"></i> Level of knowledge at end of course</label>
            <select id="data_11" name="data_11" required>
                <option value="Very good">Very good</option>
                <option value="Good">Good</option>
                <option value="Fair">Fair</option>
                <option value="Poor">Poor</option>
                <option value="Very poor">Very poor</option>
            </select>

            <label for="data_12"><i class="fa fa-comments"></i> Level of communication</label>
            <select id="data_12" name="data_12" required>
                <option value="Very good">Very good</option>
                <option value="Good">Good</option>
                <option value="Fair">Fair</option>
                <option value="Poor">Poor</option>
                <option value="Very poor">Very poor</option>
            </select>

            <label for="data_8"><i class="fa fa-check"></i> Would you recommend this course to other students?</label>
            <select id="data_8" name="data_8" required>
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                <option value="Not sure">Not sure</option>
            </select>

            <button type="submit">Submit</button>
        </form>
    </div>
</body>

</html>
