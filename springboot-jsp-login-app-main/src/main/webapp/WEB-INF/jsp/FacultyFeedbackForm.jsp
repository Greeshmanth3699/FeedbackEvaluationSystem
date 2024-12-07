<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Feedback Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

        body {
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: space-around;
            flex-direction: column;
            height: 100vh;
            background-color: #bde5d2;
            font-family: 'Poppins', sans-serif;
        }

        .textup {
            text-align: center;
            color: rgb(11, 118, 11);
            font-weight: 700;
        }

        i {
            margin-right: 3px;
        }

        .form-box {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(36, 67, 40, 0.8);
            padding: 15px;
            border-radius: 8px;
            width: 500px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
        }

        .radio-group {
            display: flex;
            margin-bottom: 16px;
        }

        input[type="radio"] {
            margin-right: 8px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 17px;
            color: green;
            font-weight: 600;
        }

        input,
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            box-sizing: border-box;
            border-radius: 10px;
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
            transition: .2s linear;
        }

        button:hover {
            background-color: #0a6808;
            border: none;
            transform: translateY(-10px);
        }

        h1 {
            color: green;
        }
    </style>
</head>

<body>
    <h1>STUDENT FEEDBACK FORM</h1>
    <h3>Feedback Form For Faculty Teaching</h3>
    <div class="form-box">
        <div class="textup">
            <i class="fa fa-solid fa-clock"></i>
            It only takes two minutes!!
        </div>
        <form action="/submitFeedback" method="post"> <!-- Update action based on your backend handling -->
            <label for="uname">
                <i class="fa fa-solid fa-user"></i>
                Name
            </label>
            <input type="text" id="uname" name="uname" required>

            <label for="email">
                <i class="fa fa-solid fa-envelope"></i>
                ID Number
            </label>
            <input type="email" id="email" name="email" required>

            <label for="phone">
                <i class="fa-solid fa-phone"></i>
                Faculty Name
            </label>
            <input type="tel" id="phone" name="phone" required>
            <label for="phone">
                <i class="fa-solid fa-phone"></i>
                Faculty ID
            </label>
            <input type="tel" id="phone" name="phone" required>

            <label>
                <i class="fa-solid fa-face-smile"></i>
                Do you satisfy with our Teaching?
            </label>
            <div class="radio-group">
                <input type="radio" id="yes" name="satisfy" value="yes" checked>
                <label for="yes">Yes</label>

                <input type="radio" id="no" name="satisfy" value="no">
                <label for="no">No</label>
            </div>

            <label for="msg">
                <i class="fa-solid fa-comments" style="margin-right: 3px;"></i>
                Write your Suggestions:
            </label>
            <textarea id="msg" name="msg" rows="4" cols="10" required></textarea>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>

</html>
