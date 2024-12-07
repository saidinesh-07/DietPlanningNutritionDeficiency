<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.klef.jfsd.springboot.model.Nutritionist"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Nutritionist Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Navigation -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="/">Diet & Nutrition</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="userdashboard">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="viewdietplan">Diet Plan</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="consultnutritionist">Consult Nutritionist</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="userprofile">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="userlogout">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content -->
    <main class="container mt-4">
        <section class="text-center">
            <h2>Nutritionist Details</h2>
            <p>Consult with our expert to plan your diet and achieve your health goals.</p>
        </section>

        <!-- Nutritionist Information -->
        <section class="mt-4">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Dr. <%= request.getParameter("name") %></h5>
                            <p class="card-text"><strong>Specialty:</strong> <%= request.getParameter("specialty") %></p>
                            <p class="card-text"><strong>Experience:</strong> Dr. <%= request.getParameter("name") %> has over 10 years of experience in the field of nutrition and dietetics. He has worked with individuals and families to help them achieve their health goals through personalized nutrition plans.</p>
                            <p class="card-text"><strong>Qualifications:</strong> M.Sc. in Nutrition & Dietetics, Certified Clinical Nutritionist, Member of the Indian Dietetic Association (IDA).</p>
                            <p class="card-text"><strong>What He Offers:</strong></p>
                            <ul>
                                <li>Personalized diet plans for weight loss, muscle gain, and overall health.</li>
                                <li>Expert advice on managing chronic conditions such as diabetes, hypertension, and PCOS.</li>
                                <li>Consultations for athletes to optimize performance through nutrition.</li>
                                <li>Nutrition counseling for children, pregnant women, and elderly people.</li>
                            </ul>
                            <p class="card-text"><strong>Philosophy:</strong> Dr. <%= request.getParameter("name") %> believes in a holistic approach to health, combining balanced nutrition, physical activity, and mental well-being to achieve long-term wellness.</p>
                            <a href="paymentgateway.jsp" class="btn btn-success">Consult Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="bg-dark text-white py-3 mt-5">
        <div class="container text-center">
            <p>&copy; 2024 Diet & Nutrition Management. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- JS Libraries -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
