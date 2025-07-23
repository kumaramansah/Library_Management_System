<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>library-management-system</title>
</head>
<style>
body {
	align-content: center;
	background-color: #F5ECD5;
	font-family: serif;
}

input {
	margin-bottom: 5px;
}
</style>
<body>
<h2>Find By Id</h2>
	<form action="find-book" method="get">
		<input type="number" placeholder="Enter BookId" name="bookId">
		<input type="submit">
	</form>
</body>
</html>