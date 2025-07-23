
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>library-management-system</title>
<style type="text/css">
body {
	background-color: #F5ECD5
}

input {
	margin-bottom: 5px;
	font-family: serif;
}

a {
	color: #578E7E;
	font-weight: 700;
	text-decoration: none;
}

h6 {
	text-align: right;
	margin-right: 40px;
}
</style>
</head>
<script src="https://kit.fontawesome.com/401b96a213.js"
	crossorigin="anonymous"></script>
<body>
	<h1>Welcome To LMS Dashboard!</h1>
	
	<h3>Login(User/Admin)</h3><span>user</span>
	<form action="login-user">
		<input type="text" placeholder="UserName" name="user"> <br>
		<input type="number" placeholder="Password" name="password"> <br>
		<input type="submit">
	</form>
	<a href="signUp.jsp">Register User</a>


</body>
</html>