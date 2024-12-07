
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <meta charset="UTF-8">
    <title>Appointment Confirmation</title>
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
        p {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Appointment Booked Successfully!</h1>
        <p>Thank you, <strong>${name}</strong>, for booking an appointment with us.</p>
        <p>Details:</p>
        <ul>
            <li><strong>Email:</strong> ${email}</li>
            <li><strong>Contact:</strong> ${contact}</li>
            <li><strong>Preferred Date:</strong> ${appointmentDate}</li>
            <li><strong>Message:</strong> ${message}</li>
        </ul>
    </div>
</body>
</html>
