<%@ page import="com.klef.jfsd.springboot.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User Profile</title>
    <style>
        /* Base styling for the body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Centering the form container */
        .container {
            width: 80%;
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        /* Form field styling */
        form {
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="date"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="number"]:focus,
        input[type="date"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
        }

        /* Submit button styling */
        .submit-btn {
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }

        /* Responsive design */
        @media screen and (max-width: 600px) {
            .container {
                width: 90%;
                padding: 20px;
            }

            .submit-btn {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Update User Profile</h2>

        <form action="updateuserprofile" method="post">
            <input type="hidden" name="uid" value="<%= ((User) session.getAttribute("user")).getId() %>">
            
            <label for="uname">Name:</label>
            <input type="text" id="uname" name="uname" value="<%= ((User) session.getAttribute("user")).getName() %>" required>

            <label for="ugender">Gender:</label>
            <input type="text" id="ugender" name="ugender" value="<%= ((User) session.getAttribute("user")).getGender() %>" required>

            <label for="uemail">Email:</label>
            <input type="email" id="uemail" name="uemail" value="<%= ((User) session.getAttribute("user")).getEmail() %>" required>

            <label for="udob">Date of Birth:</label>
            <input type="date" id="udob" name="udob" value="<%= ((User) session.getAttribute("user")).getDateOfBirth() %>" required>

            <label for="uheight">Height (cm):</label>
            <input type="number" id="uheight" name="uheight" value="<%= ((User) session.getAttribute("user")).getHeight() %>" step="0.1" required>

            <label for="uweight">Weight (kg):</label>
            <input type="number" id="uweight" name="uweight" value="<%= ((User) session.getAttribute("user")).getWeight() %>" step="0.1" required>

            <label for="uactivityLevel">Activity Level:</label>
            <input type="text" id="uactivityLevel" name="uactivityLevel" value="<%= ((User) session.getAttribute("user")).getActivityLevel() %>" required>

            <label for="udietaryPreferences">Dietary Preferences:</label>
            <input type="text" id="udietaryPreferences" name="udietaryPreferences" value="<%= ((User) session.getAttribute("user")).getDietaryPreferences() %>" required>

            <label for="uallergies">Allergies:</label>
            <input type="text" id="uallergies" name="uallergies" value="<%= ((User) session.getAttribute("user")).getAllergies() %>" required>

            <label for="uhealthConditions">Health Conditions:</label>
            <input type="text" id="uhealthConditions" name="uhealthConditions" value="<%= ((User) session.getAttribute("user")).getHealthConditions() %>" required>

            <label for="ucontact">Contact:</label>
            <input type="text" id="ucontact" name="ucontact" value="<%= ((User) session.getAttribute("user")).getContact() %>" required>

            <label for="ulocation">Location:</label>
            <input type="text" id="ulocation" name="ulocation" value="<%= ((User) session.getAttribute("user")).getLocation() %>" required>

            <label for="upassword">Password:</label>
            <input type="password" id="upassword" name="upassword" value="<%= ((User) session.getAttribute("user")).getPassword() %>" required>

            <button type="submit" class="submit-btn">Update Profile</button>
        </form>
    </div>

</body>
</html>
