<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@include file="usernavbar.jsp" %>
<%
	User user = (User)session.getAttribute("user");

	if(user==null){
		response.sendRedirect("usersessionexpiry");
		return;
	}
%>


<!DOCTYPE html>
<html>
<head>

	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="style.css">
	
    <meta charset="UTF-8">
    <title>Book an Appointment - Nutritionist</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #4CAF50;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-top: 10px;
            font-weight: bold;
        }
        input, textarea, select {
            margin-top: 5px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        textarea {
            resize: vertical;
        }
        button {
            margin-top: 20px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 14px;
        }
    </style>
    <script>
        function validateForm() {
            const name = document.getElementById("name").value.trim();
            const email = document.getElementById("email").value.trim();
            const contact = document.getElementById("contact").value.trim();
            const date = document.getElementById("appointmentDate").value;
            
            if (!name || !email || !contact || !date) {
                alert("All fields are required.");
                return false;
            }
            const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if (!email.match(emailPattern)) {
                alert("Please enter a valid email address.");
                return false;
            }
            if (!/^\d{10}$/.test(contact)) {
                alert("Contact number must be 10 digits.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Book an Appointment</h1>
        <form action="submitAppointment.jsp" method="post" onsubmit="return validateForm()">
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" placeholder="Your full name" required>

            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" placeholder="Your email address" required>

            <label for="contact">Contact Number:</label>
            <input type="tel" id="contact" name="contact" placeholder="Your 10-digit mobile number" required>

            <label for="appointmentDate">Preferred Appointment Date:</label>
            <input type="date" id="appointmentDate" name="appointmentDate" required>

            <label for="message">Additional Notes (Optional):</label>
            <textarea id="message" name="message" rows="4" placeholder="Share any specific requirements or health concerns..."></textarea>

            <button type="submit">Submit Appointment</button>
        </form>
    </div>
</body>
</html>
