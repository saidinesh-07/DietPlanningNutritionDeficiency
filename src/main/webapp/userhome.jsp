<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@include file="usernavbar.jsp" %>
<%
	User user = (User)session.getAttribute("user");

	if(user==null){
		response.sendRedirect("usersessionexpiry");
		return;
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard - Diet & Nutrition Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Main Content -->
    <main class="container mt-4">
        <!-- User Greeting -->
        <section class="text-center">
            <h2>Welcome  <%=user.getName() %></h2>
            <p>Track your health, achieve your goals, and manage your nutrition plan.</p>
        </section>

        <!-- Health Metrics Summary -->
        <section class="mt-4">
            <div class="row">
                <div class="col-md-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Current Weight</h5>
                            <p class="card-text">${user.weight} kg</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Target Weight</h5>
                            <p class="card-text">${user.targetWeight} kg</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Height</h5>
                            <p class="card-text">${user.height} cm</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Activity Level</h5>
                            <p class="card-text">${user.activityLevel}</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sections for Modules -->
        <section class="mt-5">
            <div class="row">
                <!-- Personalized Diet Plan -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Diet Plan">
                        <div class="card-body">
                            <h5 class="card-title">Your Diet Plan</h5>
                            <p class="card-text">Access and download your personalized diet plan.</p>
                            <a href="viewdietplan" class="btn btn-primary">View Diet Plan</a>
                        </div>
                    </div>
                </div>

                <!-- Progress Tracker -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Progress Tracker">
                        <div class="card-body">
                            <h5 class="card-title">Progress Tracker</h5>
                            <p class="card-text">Monitor your health progress towards your goals.</p>
                            <a href="trackprogress" class="btn btn-success">Track Progress</a>
                        </div>
                    </div>
                </div>

                <!-- Consult Nutritionist -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Consult Nutritionist">
                        <div class="card-body">
                            <h5 class="card-title">Consult Nutritionist</h5>
                            <p class="card-text">Get expert advice and guidance from our nutritionists.</p>
                            <a href="consultnutritionist" class="btn btn-info">Consult Now</a>
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
