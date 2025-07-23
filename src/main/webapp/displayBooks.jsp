<%@page import="java.sql.ResultSet"%>
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
a{
text-decoration: none;
color: #578E7E;
}
</style>
<body>
	<%ResultSet rs=(ResultSet)request.getAttribute("resultSet"); %>
	<h2>Records!</h2>
	<table border="">
		<tr>
			<th>Book Id</th>
			<th>Book Name</th>
			<th>Book Author</th>
			<th>Book Quantity</th>
		</tr>

		<%while(rs.next()){ %>
		<tr>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getInt(4) %></td>
		</tr>
	<%} %>
	</table>
	<a href="index.jsp">Go back to DashBoard</a>
</body>
</html>