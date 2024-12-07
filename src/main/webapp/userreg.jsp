<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css"> <!-- Link to your custom stylesheet -->
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
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
                            <a class="nav-link" href="about">About</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <main class="container mt-5">
        <h2 class="text-center">User Registration</h2>
        <form action="insertuser" method="post" class="mt-4">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            
            <div class="form-group">
                <label for="gender">Gender</label>
                <select class="form-control" id="gender" name="gender" required>
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            
            <div class="form-group">
                <label for="dateOfBirth">Date of Birth</label>
                <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth" required>
            </div>

            <div class="form-group">
                <label for="height">Height (in cm)</label>
                <input type="number" step="0.01" class="form-control" id="height" name="height" required>
            </div>

            <div class="form-group">
                <label for="weight">Weight (in kg)</label>
                <input type="number" step="0.01" class="form-control" id="weight" name="weight" required>
            </div>

            <div class="form-group">
                <label for="activityLevel">Activity Level</label>
                <select class="form-control" id="activityLevel" name="activityLevel" required>
                    <option value="">Select Activity Level</option>
                    <option value="Sedentary">Sedentary</option>
                    <option value="Moderate">Moderate</option>
                    <option value="Active">Active</option>
                </select>
            </div>

            <div class="form-group">
                <label for="dietaryPreferences">Dietary Preferences</label>
                <input type="text" class="form-control" id="dietaryPreferences" name="dietaryPreferences">
            </div>

            <div class="form-group">
                <label for="allergies">Allergies</label>
                <input type="text" class="form-control" id="allergies" name="allergies">
            </div>

            <div class="form-group">
                <label for="healthConditions">Health Conditions</label>
                <input type="text" class="form-control" id="healthConditions" name="healthConditions">
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>

            <div class="form-group">
                <label for="contact">Contact Number</label>
                <input type="text" class="form-control" id="contact" name="contact" required>
            </div>

            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" class="form-control" id="location" name="location" required>
            </div>

            <div class="form-group">
                <label for="targetWeight">Target Weight (optional)</label>
                <input type="number" step="0.01" class="form-control" id="targetWeight" name="targetWeight">
            </div>

            <div class="form-group">
                <label for="goal">Goal</label>
                <select class="form-control" id="goal" name="goal">
                    <option value="">Select Goal</option>
                    <option value="Maintain weight">Maintain weight</option>
                    <option value="Lose weight">Lose weight</option>
                    <option value="Gain muscle">Gain muscle</option>
                </select>
            </div>

            <input type="hidden" name="status" value="Active">

            <button type="submit" class="btn btn-success btn-lg btn-block">Register</button>
        </form>
    </main>

    <footer class="bg-dark text-white py-4 mt-5 text-center">
        <p>&copy; 2024 Diet & Nutrition Management. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
