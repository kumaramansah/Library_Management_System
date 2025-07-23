<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	align-content: center;
	background-color: #F5ECD5
}

input {
	margin-bottom: 5px;
	font-family: serif;
}
</style>
<body>
<h2>Remove Book</h2>
	<form action="remove-book" method="get">
		<input type="number" placeholder="Enter Book Id" name="bookId">
		<input type="submit" >
	</form>
</body>
</html>