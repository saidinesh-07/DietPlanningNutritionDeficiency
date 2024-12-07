<%@ page import="com.klef.jfsd.springboot.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp"); // Redirect to login page if user is not logged in
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
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

        /* Profile container */
        .profile-container {
            width: 80%;
            margin: 40px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Profile details */
        .profile-details {
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 10px;
            margin: 20px 0;
            font-size: 1.1em;
        }

        .profile-details b {
            color: #333;
            font-weight: 600;
        }

        .profile-details .label {
            color: #1E3A5F;
        }

        /* Buttons */
        .profile-button {
            display: inline-block;
            background-color: #1E3A5F;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            font-weight: bold;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        .profile-button:hover {
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
    <h1>User Profile</h1>
</header>

<div class="profile-container">
    <div class="profile-details">
        <div><b>ID:</b></div>
        <div><%= user.getId() %></div>

        <div><b class="label">NAME:</b></div>
        <div><%= user.getName() %></div>

        <div><b class="label">GENDER:</b></div>
        <div><%= user.getGender() %></div>

        <div><b class="label">EMAIL:</b></div>
        <div><%= user.getEmail() %></div>

        <div><b class="label">DATE OF BIRTH:</b></div>
        <div><%= user.getDateOfBirth() %></div>

        <div><b class="label">HEIGHT:</b></div>
        <div><%= user.getHeight() %></div>

        <div><b class="label">WEIGHT:</b></div>
        <div><%= user.getWeight() %></div>

        <div><b class="label">ACTIVITY LEVEL:</b></div>
        <div><%= user.getActivityLevel() %></div>

        <div><b class="label">DIET PREFERENCES:</b></div>
        <div><%= user.getDietaryPreferences() %></div>

        <div><b class="label">ALLERGIES:</b></div>
        <div><%= user.getAllergies() %></div>

        <div><b class="label">CONTACT:</b></div>
        <div><%= user.getContact() %></div>

        <div><b class="label">LOCATION:</b></div>
        <div><%= user.getLocation() %></div>

        <div><b class="label">HEALTH CONDITION:</b></div>
        <div><%= user.getHealthConditions() %></div>
    </div>

    <a href="updateuserprofile" class="profile-button">Edit Profile</a>
</div>

<footer>
    <p>&copy; 2024 Diet & Nutrition Management. All Rights Reserved.</p>
</footer>

</body>
</html>
