<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nutritionist Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css"> <!-- Link to your custom stylesheet -->
    
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

    <main class="container mt-5">
        <h2 class="text-center">Nutritionist Registration</h2>
        <form action="insertnutritionist" method="post" class="mt-4">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter full name" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
            </div>

            <div class="form-group">
                <label for="contact">Contact Number</label>
                <input type="text" class="form-control" id="contact" name="contact" placeholder="Enter contact number" required>
            </div>

            <div class="form-group">
                <label for="expertise">Expertise</label>
                <input type="text" class="form-control" id="expertise" name="expertise" placeholder="e.g., Child Nutrition, Sports Nutrition">
            </div>

            <div class="form-group">
                <label for="bio">Short Bio</label>
                <textarea class="form-control" id="bio" name="bio" placeholder="Provide a short biography or qualifications" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="dietaryRecommendations">Dietary Recommendations</label>
                <textarea class="form-control" id="dietaryRecommendations" name="dietaryRecommendations" placeholder="Provide general dietary guidance" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="blogs">Blogs</label>
                <textarea class="form-control" id="blogs" name="blogs" placeholder="Add blog content separated by new lines" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="testimonials">Testimonials</label>
                <textarea class="form-control" id="testimonials" name="testimonials" placeholder="Add testimonials or feedback" rows="3"></textarea>
            </div>

            <button type="submit" class="btn btn-success btn-lg btn-block">Register</button>
        </form>
    </main>

    <footer class="bg-dark text-white py-4 mt-5 text-center">
        <p>&copy; 2024 Nutrition Management. All Rights Reserved.</p>
    </footer>

</body>
</html>
