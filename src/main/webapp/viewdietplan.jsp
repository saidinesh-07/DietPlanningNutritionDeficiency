<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="usernavbar.jsp" %>

<%
	User user = (User)session.getAttribute("user");

	if(user==null){
		response.sendRedirect("usersessionexpiry");
		return;
	}
%>

<!DOCTYPE html>
<html>
<head>

	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="style.css">
    <title>Diet Plan Viewer</title>
    <!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
    <style>
    
		body {
		    font-family: Arial, sans-serif;
		    background-color: #f5f5f5;
		    margin: 0;
		    padding: 0;
		}
		
		.container {
		    width: 80%;
		    margin: 50px auto;
		    background: #ffffff;
		    border-radius: 8px;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		    padding: 20px;
		}
		
		h1 {
		    text-align: center;
		    color: #333;
		    margin-bottom: 20px;
		}
		
		.diet-plan-table {
		    width: 100%;
		    border-collapse: collapse;
		    margin: 20px 0;
		}
		
		.diet-plan-table th, 
		.diet-plan-table td {
		    padding: 12px 15px;
		    text-align: center;
		    border: 1px solid #ddd;
		}
		
		.diet-plan-table th {
		    background-color: #4CAF50;
		    color: white;
		    font-weight: bold;
		}
		
		.diet-plan-table tr:nth-child(even) {
		    background-color: #f9f9f9;
		}
		
		.diet-plan-table tr:hover {
		    background-color: #f1f1f1;
		}
		
		.diet-plan-table td {
		    color: #555;
		}
    	    
    	
    
    </style>
    
    
</head>
<body>
    <div class="container">
        <h1>User Diet Plan</h1>
        <table class="diet-plan-table">
            <thead>
                <tr>
                    <th>Meal</th>
                    <th>Food Items</th>
                    <th>Calories</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Dummy data for demonstration purposes
                    String[][] dietPlan = {
                        {"Breakfast", "Oatmeal, Banana, Milk", "350", "8:00 AM"},
                        {"Lunch", "Grilled Chicken, Brown Rice, Salad", "600", "1:00 PM"},
                        {"Snack", "Apple, Nuts", "200", "4:00 PM"},
                        {"Dinner", "Steamed Vegetables, Fish, Soup", "500", "8:00 PM"}
                    };

                    for (String[] meal : dietPlan) {
                %>
                <tr>
                    <td><%= meal[0] %></td>
                    <td><%= meal[1] %></td>
                    <td><%= meal[2] %> kcal</td>
                    <td><%= meal[3] %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
