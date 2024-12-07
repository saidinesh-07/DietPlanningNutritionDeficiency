<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Diet Plans</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Header Section -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand" href="/">Diet & Nutrition</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="dietplans.jsp">Diet Plans</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main class="container mt-5">
        <h1 class="text-center mb-4">Explore Our Diet Plans</h1>
        <p class="lead text-center">Choose from a variety of personalized diet plans to suit your health goals.</p>
        <div class="row">
            <!-- Weight Loss Plan -->
            <div class="col-md-6 mb-4">
                <div class="card">
                    <img src="https://www.lifepointhospital.in/wp-content/uploads/2023/08/diet-plans-1.jpg" class="card-img-top" alt="Weight Loss Plan">
                    <div class="card-body">
                        <h5 class="card-title">Weight Loss Plan</h5>
                        <p class="card-text">A calorie-controlled diet tailored to help you achieve your weight loss goals.</p>
                        <a href="weightlossdetails.jsp" class="btn btn-primary btn-lg">View Details</a>
                    </div>
                </div>
            </div>
            <!-- Balanced Diet Plan -->
            <div class="col-md-6 mb-4">
                <div class="card">
                    <img src="https://img.freepik.com/free-photo/healthy-meal-preparation_23-2148582002.jpg" class="card-img-top" alt="Balanced Diet Plan">
                    <div class="card-body">
                        <h5 class="card-title">Balanced Diet Plan</h5>
                        <p class="card-text">A diet plan focused on a well-rounded mix of nutrients for optimal health.</p>
                        <a href="balanceddietdetails.jsp" class="btn btn-success btn-lg">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Diet & Nutrition Management. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
