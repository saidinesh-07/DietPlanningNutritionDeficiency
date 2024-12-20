<%@page import="com.klef.jfsd.springboot.model.Nutritionist"%>
<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Consult Nutritionist</title>
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
            <h2>Choose a Nutritionist</h2>
            <p>Select a nutritionist to consult with.</p>
        </section>

        <!-- List of Nutritionists -->
        <section class="mt-4">
            <div class="row">
                <% 
                // Static list of nutritionists
                String[] names = {"Dr.Karthikeya", "Dr.Dinesh", "Dr.RK", "Dr. Bali", "Dr. Lee", "Dr. kick"};
                String[] specialties = {"Weight Loss", "Nutritionist for Kids", "Sports Nutrition", "Vegan Diet", "Health & Wellness", "Diet for Diabetics"};
                for (int i = 0; i < names.length; i++) {
                %>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"><%= names[i] %></h5>
                                <p class="card-text">Specialty: <%= specialties[i] %></p>
                                <a href="nutritionaldetails.jsp?name=<%= names[i] %>&specialty=<%= specialties[i] %>" class="btn btn-primary">Consult</a>
                            </div>
                        </div>
                    </div>
                <% } %>
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
