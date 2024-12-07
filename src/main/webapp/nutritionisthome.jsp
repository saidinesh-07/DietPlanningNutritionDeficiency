<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file="nutritionistnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutritionist Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <!-- Main Content -->
    <div class="container mt-5">
        <h3 class="text-center mb-4">Welcome, Nutritionist!</h3>
        <p class="text-center">Manage your profile, dietary recommendations, blogs, and client testimonials.</p>
        <div class="text-center mt-4">
            <a href="createblog" class="btn btn-primary">Add Blog</a>
            <a href="recommendations" class="btn btn-secondary">View Recommendations</a>
            <a href="manageTestimonials" class="btn btn-info">Manage Testimonials</a>
        </div>
    </div>


</body>
</html>