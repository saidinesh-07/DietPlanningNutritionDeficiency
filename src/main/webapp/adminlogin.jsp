<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="navbar.jsp" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	
	    <style>
        body {
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9lpqEH-UnBI3PAYhpUhN88mf_fstcC2f8UA&s'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Ensure full screen height */
            margin: 0;
        }
    </style>

	
</head>
<body>

<header>
 

    <div class="container mt-5">
        <h2 class="text-center">Admin Login</h2>
        <form action="checkadminlogin" method="POST">
            <div class="form-group">
                <label for="auname">Username:</label>
                <input type="text" class="form-control" id="auname" name="auname" required>
            </div>
            <div class="form-group">
                <label for="apwd">Password:</label>
                <input type="password" class="form-control" id="apwd" name="apwd" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
            </div>
</body>
</html>
