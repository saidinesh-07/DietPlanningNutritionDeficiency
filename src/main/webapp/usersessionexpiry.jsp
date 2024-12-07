<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Expired</title>
</head>
<body>
<%session.invalidate(); %>
Sorry!! Session expired!!<br>
<a href="userlogin">Login Again</a>
</body>
</html>