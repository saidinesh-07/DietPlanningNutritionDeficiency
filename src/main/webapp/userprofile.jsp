<%@ page import="com.klef.jfsd.springboot.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    User user = (User) session.getAttribute("user");
	if (user == null) {
    	out.println("<h2>Session expired. Please <a href='login.jsp'>login</a> again.</h2>");
    	return;
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
            background-color: lightgreen;
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
            text-align: center;
        }

        .profile-photo {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
            border: 3px solid #1E3A5F;
        }

        .profile-photo-upload {
            margin: 20px auto;
            text-align: center;
        }

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

        .update-photo-button {
            margin-top: 10px;
            padding: 10px 20px;
            font-size: 1em;
            color: #fff;
            background-color: #1E3A5F;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .update-photo-button:hover {
            background-color: #25497A;
        }

        footer {
            background-color: lightgreen;
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
    <!-- Profile Photo -->
<%--     <%
    	String profilePhoto = (user != null && user.getProfilePhotoPath() != null && !user.getProfilePhotoPath().isEmpty())
                        ? user.getProfilePhotoPath()
                        : "https://www.shutterstock.com/image-vector/image-icon-600nw-211642900.jpg";
	%> --%>
<%-- 	<img class="profile-photo" id="profilePhoto" src="<%= profilePhoto %>" alt="Profile Photo">
     --%>

    <!-- Profile Photo Upload -->
    <div class="profile-photo-upload">
        <form action="updateprofilephoto" method="post" enctype="multipart/form-data">
            <input type="file" name="profilePhoto" accept="image/*" id="profilePhotoInput" required onchange="previewImage(event)">
            <button type="submit" class="update-photo-button">Update Photo</button>
        </form>
    </div>

    <!-- Profile Details -->
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

<script>
    function previewImage(event) {
        const file = event.target.files[0];
        const reader = new FileReader();
        reader.onload = function() {
            const preview = document.getElementById('profilePhoto');
            preview.src = reader.result;
        };
        if (file) {
            reader.readAsDataURL(file);
        }
    }
</script>

</body>
</html>
