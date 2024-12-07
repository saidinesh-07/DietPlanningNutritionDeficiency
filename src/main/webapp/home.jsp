<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Diet & Nutrition Management</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> <!-- Link to CSS file -->
<link rel="stylesheet" href="style.css"> <!-- Your custom stylesheet -->
</head>
<body>

    <!-- Main Content Section -->
    <main class="container mt-5">
        <div class="row">
            <div class="col-12">
                <h1 class="text-center">Welcome to Diet & Nutrition Management</h1>
                <p class="lead text-center">
                    Your health is important! Manage your diet, track your nutrition, and get personalized health advice from certified nutritionists.
                </p>

                <!-- How it Works Section -->
                <section>
                    <h2 class="text-center mt-5">How It Works</h2>
                    <p class="text-center">
                        Our platform connects you with experts who help you manage your health and diet through personalized plans and advice.
                    </p>
                    <div class="row">
                        <div class="col-md-4">
                        <a href="dietplans">
                            <div class="card">
                                <img src="https://www.lifepointhospital.in/wp-content/uploads/2023/08/diet-plans-1.jpg" class="card-img-top" alt="Personalized Plans">
                                <div class="card-body">
                                    <h5 class="card-title">Personalized Diet Plans</h5>
                                    <p class="card-text">Get diet plans tailored to your health conditions, preferences, and lifestyle.</p>
                                </div>
                            </div>
                            </a>
                        </div>
                        <div class="col-md-4">
                        <a href="viewallnutritionists">
                            <div class="card">
                                <img src="https://img.freepik.com/premium-photo/expert-nutritionist-consultation-female-dietitian-advising-patient-health-diet-plan_1014870-15026.jpg" class="card-img-top" alt="Expert Nutritionists">
                                <div class="card-body">
                                    <h5 class="card-title">Expert Nutritionists</h5>
                                    <p class="card-text">Consult certified nutritionists for advice and support on your health journey.</p>
                                </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                        <a href="userlogin">
                            <div class="card">
                                <img src="https://s3.ap-south-1.amazonaws.com/kukufm/channel_icons/b8ef0a1e2b5844b593a775427fca1cb3.png" class="card-img-top" alt="Track Progress">
                                <div class="card-body">
                                    <h5 class="card-title">Track Your Progress</h5>
                                    <p class="card-text">Monitor your health progress with real-time tracking of your nutrient intake and goals.</p>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                </section>

                <!-- Call-to-action Section -->
                <section class="text-center mt-5">
                    <h3>Join Us Today</h3>
                    <p>Sign up now to get personalized advice, diet plans, and track your progress toward better health!</p>
                    <a href="userreg" class="btn btn-success btn-lg">Register as User</a>
                    <a href="addnutritionist" class="btn btn-primary btn-lg ml-3">Become a Nutritionist</a>
                </section>

            </div>
        </div>
    </main>

    <!-- Footer Section -->
    <footer class="bg-dark text-white py-4 mt-5">
        <div class="container text-center">
            <p>&copy; 2024 Diet & Nutrition Management. All Rights Reserved.</p>
            <ul class="list-unstyled">
                <li><a href="about" class="text-white">About Us</a></li>
                <li><a href="https://www.linkedin.com/in/karthikeya-pavan-gopisetty-280518255/" target="blank" class="text-white">Contact</a></li>
                <li><a href="/privacy" class="text-white">Privacy Policy</a></li>
            </ul>
        </div>
    </footer>


</body>
</html>
