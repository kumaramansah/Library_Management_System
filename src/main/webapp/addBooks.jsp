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
	background-color: #F5ECD5
}

input {
	margin-bottom: 5px;
	font-family: serif;
}
</style>
<body>
<h2>Add Books</h2>
	<form action="add-books" method="post">
		<input type="number" placeholder="Enter BookId" name="bookId"><br>
		<input type="text" placeholder="Enter BookName" name="bookName"><br>
		<input type="text" placeholder="Enter BookAuthor" name="bookAuthor"><br>
		<input type="number" placeholder="Enter BookQuantity"
			name="bookQuantity"><br> <input type="submit">

	</form>
</body>
</html>