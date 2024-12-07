<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="navbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="style.css">
</head>
<body>


    <!-- User Login Form -->
    <div class="container mt-5">
        <h3 class="text-center mb-4"><u>User Login</u></h3>

        <!-- Form to Login User -->
        <form action="checkuserlogin" method="post" class="form-container col-md-6 mx-auto">
            <div class="mb-3">
                <label for="uemail" class="form-label">Email</label>
                <input type="email" id="uemail" name="uemail" class="form-control" required="required"/>
            </div>
            <div class="mb-3">
                <label for="upwd" class="form-label">Password</label>
                <input type="password" id="upwd" name="upwd" class="form-control" required="required"/>
            </div>

            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary">Login</button>
                <a href="forgotpassword" class="btn btn-link">Forgot Password?</a>
            </div>
        </form>
    </div>

    <!-- Footer Section -->
    <footer class="bg-dark text-white py-4 mt-5">
        <div class="container text-center">
            <p>&copy; 2024 Diet & Nutrition Management. All Rights Reserved.</p>
        </div>
    </footer>

</body>
</html>
