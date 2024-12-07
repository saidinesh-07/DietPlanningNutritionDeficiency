<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diet & Nutrition Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> <!-- Link to CSS file -->
    <link rel="stylesheet" href="style.css"> <!-- Your custom stylesheet -->
    <style>
    body {
    	background-image: url('https://images.unsplash.com/photo-1535914254981-b5012eebbd15?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    
    }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="/">Diet & Nutrition</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about">About</a>
                        </li>
                        <li class="nav-item">
                            <div class="dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Get Started
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <h6 class="dropdown-header">Login</h6>
                                    <a class="dropdown-item" href="adminlogin">Login as Admin</a>
                                    <a class="dropdown-item" href="userlogin">Login as User</a>
                                    <a class="dropdown-item" href="nutritionistlogin">Login as Nutritionist</a>
                                    <div class="dropdown-divider"></div>
                                    <h6 class="dropdown-header">Register</h6>
                                    <a class="dropdown-item" href="userreg">Register as User</a>
                                    <a class="dropdown-item" href="addnutritionist">Register as Nutritionist</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

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
                            <div class="card">
                                <img src="https://plus.unsplash.com/premium_photo-1687959301529-e4d63d33b034?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZGlldCUyMHBsYW5zfGVufDB8fDB8fHww" class="card-img-top" alt="Personalized Plans">
                                <div class="card-body">
                                    <h5 class="card-title">Personalized Diet Plans</h5>
                                    <p class="card-text">Get diet plans tailored to your health conditions, preferences, and lifestyle.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <img src="https://images.unsplash.com/photo-1556911073-52527ac43761?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG51dHJpdGlvbmFsaXN0c3xlbnwwfHwwfHx8MA%3D%3D" class="card-img-top" alt="Expert Nutritionists">
                                <div class="card-body">
                                    <h5 class="card-title">Expert Nutritionists</h5>
                                    <p class="card-text">Consult certified nutritionists for advice and support on your health journey.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <img src="https://images.unsplash.com/photo-1434626881859-194d67b2b86f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2dyZXNzJTIwdHJhY2tlcnxlbnwwfHwwfHx8MA%3D%3D" class="card-img-top" alt="Track Progress">
                                <div class="card-body">
                                    <h5 class="card-title">Track Your Progress</h5>
                                    <p class="card-text">Monitor your health progress with real-time tracking of your nutrient intake and goals.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Our Services Section -->
                <section class="container mt-5">
                    <h2 class="text-center">Our Services</h2>
                    <p class="text-center">We offer a range of services designed to help you achieve your health and fitness goals. Our expert nutritionists work with you to develop personalized plans and monitor your progress.</p>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <img src="https://images.unsplash.com/photo-1637000289497-f5d424b696a6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aGVhbHRoJTIwcGxhbnN8ZW58MHx8MHx8fDA%3D" class="card-img-top" alt="Custom Plans">
                                <div class="card-body">
                                    <h5 class="card-title">Customized Health Plans</h5>
                                    <p class="card-text">Create a health plan tailored to your individual needs with the help of our experts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <img src="https://images.unsplash.com/photo-1505576399279-565b52d4ac71?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bnV0cml0aW9uJTIwZ3VpZGFuY2V8ZW58MHx8MHx8fDA%3D" class="card-img-top" alt="Nutrition Guidance">
                                <div class="card-body">
                                    <h5 class="card-title">Nutrition Guidance</h5>
                                    <p class="card-text">Receive advice on how to balance your meals for optimal health and energy.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <img src="https://images.unsplash.com/photo-1582560469781-1965b9af903d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGhlYWx0aCUyMG1vbml0b3Jpbmd8ZW58MHx8MHx8fDA%3D" class="card-img-top" alt="Health Monitoring">
                                <div class="card-body">
                                    <h5 class="card-title">Health Monitoring</h5>
                                    <p class="card-text">Track your health progress and get feedback on how to improve your fitness.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Testimonials Section -->
                <section class="container mt-5">
                    <h2 class="text-center">What Our Clients Say</h2>
                    <p class="text-center">Read some testimonials from our satisfied users who have achieved their health goals with our platform.</p>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">John Doe</h5>
                                    <p class="card-text">"I lost 10 kg in 2 months with the personalized diet plans! The advice from my nutritionist was invaluable."</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Jane Smith</h5>
                                    <p class="card-text">"The progress tracking system helped me stay motivated. I feel more energetic and healthier now!"</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Emily Johnson</h5>
                                    <p class="card-text">"The nutritionist’s guidance on my health conditions was amazing. I now have a clear path to follow."</p>
                                </div>
                            </div>
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

    <!-- Bootstrap JS, Popper.js, and jQuery (required for some Bootstrap components) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
