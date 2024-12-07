<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@include file="navbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutritionist Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS for Project Styling -->
    <link rel="stylesheet" href="style.css" /> <!-- Your custom styles -->
</head>
<body>



    <!-- Login Form -->
    <div class="container mt-5">
        <h3 class="text-center"><u>Nutritionist Login</u></h3>
        
        <!-- Display Login Errors (if any) -->
        <c:if test="${not empty error}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${error}"/>
            </div>
        </c:if>

        <!-- Nutritionist Login Form -->
        <form action="nutritionistlogin" method="post" class="col-md-6 mx-auto">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required placeholder="Enter your email" />
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" required placeholder="Enter your password" />
            </div>
            <button type="submit" class="btn btn-primary btn-block mt-3">Login</button>
        </form>

        <div class="text-center mt-3">
            <p>Don't have an account? <a href="registernutritionist">Register here</a></p>
        </div>
    </div>

</body>
</html>
