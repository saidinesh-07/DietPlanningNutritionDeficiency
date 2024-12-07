<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Balanced Diet Details</title>
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
                            <a class="nav-link" href="dietplans.jsp">Diet Plans</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="balanceddietdetails.jsp">Balanced Diet Details</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main class="container mt-5">
        <h1 class="text-center mb-4">Balanced Diet Details</h1>
        <p class="lead text-center">Below is a detailed breakdown of a balanced diet, including daily nutrient requirements and food sources.</p>

        <!-- Balanced Diet Table -->
        <div class="table-responsive mt-4">
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>Category</th>
                        <th>Recommended Amount</th>
                        <th>Food Sources</th>
                        <th>Benefits</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Proteins</td>
                        <td>50-60 grams/day</td>
                        <td>Eggs, Fish, Chicken, Lentils, Nuts</td>
                        <td>Builds and repairs tissues, supports immune function</td>
                    </tr>
                    <tr>
                        <td>Carbohydrates</td>
                        <td>225-325 grams/day</td>
                        <td>Whole grains, Fruits, Vegetables</td>
                        <td>Provides energy, supports brain function</td>
                    </tr>
                    <tr>
                        <td>Fats</td>
                        <td>44-77 grams/day</td>
                        <td>Avocados, Olive oil, Nuts, Seeds</td>
                        <td>Energy storage, supports cell structure</td>
                    </tr>
                    <tr>
                        <td>Vitamins</td>
                        <td>Varies by type</td>
                        <td>Fruits, Vegetables, Dairy</td>
                        <td>Boosts immunity, maintains skin and eyes</td>
                    </tr>
                    <tr>
                        <td>Minerals</td>
                        <td>Varies by type</td>
                        <td>Spinach, Bananas, Dairy, Nuts</td>
                        <td>Bone health, regulates metabolism</td>
                    </tr>
                    <tr>
                        <td>Water</td>
                        <td>2-3 liters/day</td>
                        <td>Plain water, Fruits, Vegetables</td>
                        <td>Maintains hydration, regulates body temperature</td>
                    </tr>
                    <tr>
                        <td>Fiber</td>
                        <td>25-30 grams/day</td>
                        <td>Whole grains, Vegetables, Fruits</td>
                        <td>Improves digestion, prevents constipation</td>
                    </tr>
                </tbody>
            </table>
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
