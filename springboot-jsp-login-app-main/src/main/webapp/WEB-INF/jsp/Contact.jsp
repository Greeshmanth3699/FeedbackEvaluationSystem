<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        /* Style inputs with type="text", select elements, and textareas */
        input[type=text], select, textarea {
            width: 100%; /* Full width */
            padding: 12px; /* Some padding */
            border: 1px solid #ccc; /* Gray border */
            border-radius: 4px; /* Rounded borders */
            box-sizing: border-box; /* Make sure that padding and width stays in place */
            margin-top: 6px; /* Add a top margin */
            margin-bottom: 16px; /* Bottom margin */
            resize: vertical; /* Allow the user to vertically resize the textarea (not horizontally) */
        }

        /* Style the submit button with a specific background color, etc */
        input[type=submit] {
            background-color: #04AA6D;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        /* When moving the mouse over the submit button, add a darker green color */
        input[type=submit]:hover {
            background-color: #45a049;
        }

        /* Add a background color and some padding around the form */
        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        /* Style for contact information */
        .contact-info {
            margin-top: 20px;
        }

        .contact-info h3 {
            margin-bottom: 10px;
        }

        .contact-info table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .contact-info th, .contact-info td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

    </style>
</head>

<body>

<div class="container">
    <form action="action_page.jsp"> <!-- Update the action as per your backend handling -->

        <label for="fname">First Name</label>
        <input type="text" id="fname" name="firstname" placeholder="Your name..">

        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">

        <label for="country">Country</label>
        <select id="country" name="country">
            <option value="australia">Australia</option>
            <option value="canada">Canada</option>
            <option value="usa">USA</option>
        </select>

        <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

        <input type="submit" value="Submit">

    </form>
</div>

<!-- Add the contact details -->
<div class="container contact-info">
    <h3>Contact Information</h3>
    <table>
        <tr>
            <th colspan="2">Postal Address</th>
        </tr>
        <tr>
            <td>Official Communication</td>
            <td>KLEF Deemed to be University,<br> Admin. Office, 29-36-38, Museum Road, Governorpeta, Vijayawada, A.P., India.<br> Pincode: 520 002.</td>
        </tr>
        <tr>
            <td>Campus</td>
            <td>KLEF Deemed to be University,<br> Green Fields, Vaddeswaram, Guntur District, A.P., INDIA.<br> Pincode: 522 302.</td>
        </tr>

        <tr>
            <th colspan="2">Phone Number</th>
        </tr>
        <tr>
            <td>Administrative Office (Vijayawada)</td>
            <td>0866 - 3500122</td>
        </tr>
        <tr>
            <td>Campus (Vijayawada)</td>
            <td>08645 - 350200</td>
        </tr>
        <tr>
            <td>Administrative Office (Hyderabad)</td>
            <td>040 - 35045035</td>
        </tr>
        <tr>
            <td>Campus (Hyderabad)</td>
            <td>040 - 35045055</td>
        </tr>

        <tr>
            <th colspan="2">Fax Number</th>
        </tr>
        <tr>
            <td>Campus</td>
            <td>0863 - 2388999</td>
        </tr>

        <tr>
            <th colspan="2">E-Mail</th>
        </tr>
        <tr>
            <td>Campus (Hyderabad)</td>
            <td>reach@klh.edu.in</td>
        </tr>
    </table>
</div>

</body>
</html>
