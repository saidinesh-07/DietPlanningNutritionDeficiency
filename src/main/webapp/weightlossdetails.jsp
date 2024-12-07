<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Weight Loss Tracker</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Header Section -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container" >
                <a class="navbar-brand" href="/">Healthy You</a>
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
                            <a class="nav-link" href="dietplans.jsp">Diet Plans</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="weightlosstracker.jsp">Weight Loss Tracker</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main class="container mt-5">
        <h1 class="text-center mb-4">Weight Loss Tracker</h1>
        <p class="lead text-center">Track your progress and stay motivated on your weight loss journey.</p>

        <!-- Form Section -->
        <div class="card mt-4">
            <div class="card-body">
                <form action="submitWeight.jsp" method="post">
                    <div class="form-group">
                        <label for="currentWeight">Current Weight (kg):</label>
                        <input type="number" class="form-control" id="currentWeight" name="currentWeight" required>
                    </div>
                    <div class="form-group">
                        <label for="goalWeight">Goal Weight (kg):</label>
                        <input type="number" class="form-control" id="goalWeight" name="goalWeight" required>
                    </div>
                    <div class="form-group">
                        <label for="date">Date:</label>
                        <input type="date" class="form-control" id="date" name="date" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form>
            </div>
        </div>

        <!-- Progress Table -->
        <div class="table-responsive mt-5">
            <h2 class="text-center">Progress Log</h2>
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>Date</th>
                        <th>Current Weight (kg)</th>
                        <th>Goal Weight (kg)</th>
                        <th>Difference (kg)</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Sample Data -->
                    <tr>
                        <td>2024-11-01</td>
                        <td>70</td>
                        <td>65</td>
                        <td>-5</td>
                    </tr>
                    <tr>
                        <td>2024-11-15</td>
                        <td>68</td>
                        <td>65</td>
                        <td>-3</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Healthy You. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
