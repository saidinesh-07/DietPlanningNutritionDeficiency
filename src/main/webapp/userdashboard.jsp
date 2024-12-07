<%@ page import="com.klef.jfsd.springboot.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if not logged in
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <link rel="stylesheet" href="style.css"> <!-- External CSS file -->
    <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        /* Header styling */
        header {
            background-color: #1E3A5F;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        /* Dashboard container */
        .dashboard-container {
            width: 80%;
            margin: 40px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Dashboard sections */
        .dashboard-section {
            margin: 20px 0;
        }

        .dashboard-section h2 {
            color: #1E3A5F;
        }

        /* Buttons */
        .dashboard-button {
            display: inline-block;
            background-color: #1E3A5F;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            font-weight: bold;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        .dashboard-button:hover {
            background-color: #25497A;
        }

        /* Footer */
        footer {
            background-color: #1E3A5F;
            color: #fff;
            text-align: center;
            padding: 10px;
            margin-top: 40px;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to Your Dashboard, <%= user.getName() %>!</h1>
</header>

<div class="dashboard-container">
    <div class="dashboard-section">
        <h2>Profile Overview</h2>
        <p><b>Name:</b> <%= user.getName() %></p>
        <p><b>Email:</b> <%= user.getEmail() %></p>
        <p><b>Location:</b> <%= user.getLocation() %></p>
        <p><b>Height:</b> <%= user.getHeight() %> cm</p>
        <p><b>Weight:</b> <%= user.getWeight() %> kg</p>
        <p><b>Activity Level:</b> <%= user.getActivityLevel() %></p>
    </div>

    <div class="dashboard-section">
        <a href="userprofile" class="dashboard-button">View Profile</a>
        <a href="edituserprofile" class="dashboard-button">Edit Profile</a>
        <a href="logout" class="dashboard-button">Logout</a>
    </div>

</div>

<footer>
    <p>&copy; 2024 Diet & Nutrition Management. All Rights Reserved.</p>
</footer>

</body>
</html>
