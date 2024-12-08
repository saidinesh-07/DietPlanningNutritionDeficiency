<!DOCTYPE html>
<html>
<head>
    <title>Progress Tracker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #2a9d8f;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #264653;
            color: white;
        }
        .add-entry {
            margin: 20px 0;
            text-align: right;
        }
        .add-entry button {
            padding: 10px 20px;
            background-color: #e76f51;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .add-entry button:hover {
            background-color: #d35400;
        }
        .no-data {
            text-align: center;
            font-style: italic;
            color: #e76f51;
        }
        .charts-section {
            margin-top: 30px;
            text-align: center;
        }
        .charts-section h2 {
            color: #2a9d8f;
            margin-bottom: 10px;
        }
        .charts-section p {
            color: #555;
            margin-bottom: 20px;
        }
        .charts-section img {
            width: 100%;
            max-width: 600px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Progress Tracker</h1>

        <div class="add-entry">
            <button onclick="window.location.href='addProgress.jsp'">Add New Entry</button>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Weight (kg)</th>
                    <th>Calories Consumed</th>
                    <th>Calories Burned</th>
                    <th>Steps Taken</th>
                </tr>
            </thead>
            <tbody>
                <!-- Sample static data -->
                <tr>
                    <td>2024-12-01</td>
                    <td>72.5</td>
                    <td>2000</td>
                    <td>500</td>
                    <td>8000</td>
                </tr>
                <tr>
                    <td>2024-12-02</td>
                    <td>72.2</td>
                    <td>2100</td>
                    <td>600</td>
                    <td>8500</td>
                </tr>
                <tr>
                    <td>2024-12-03</td>
                    <td>71.8</td>
                    <td>2200</td>
                    <td>550</td>
                    <td>9000</td>
                </tr>
                <tr>
                    <td>2024-12-04</td>
                    <td>71.5</td>
                    <td>2300</td>
                    <td>600</td>
                    <td>9500</td>
                </tr>
                <tr>
                    <td>2024-12-05</td>
                    <td>71.2</td>
                    <td>2000</td>
                    <td>650</td>
                    <td>10000</td>
                </tr>
                <!-- End of sample data -->
                <!-- If no data is available -->
                <tr>
                    <td colspan="5" class="no-data">No progress entries available.</td>
                </tr>
            </tbody>
        </table>

        <!-- Charts and Graphs Section -->
        <div class="charts-section">
            <h2>Progress Visualized</h2>
            <p>Below are the visualizations based on your progress:</p>
            
            <!-- Chart Image 1 -->
            <img src="https://images.template.net/105329/diet-recommendation-pie-chart-bx5v3.jpeg" 
                 alt="Diet Recommendations">
            
            <!-- Chart Image 2 -->
            <img src="https://images-prod.healthline.com/hlcmsresource/images/AN_images/node_128512_graphs/graph-128512-04.jpg" 
                 alt="Calories Comparison Chart">
        </div>
    </div>
</body>
</html>
