<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>library-management-system</title>
</head>
<style type="text/css">
body
{background-color: #F5ECD5
}
a{
	color: #578E7E;
	font-weight: 700;
	text-decoration: none;
	
}

</style>
<body>
<%String name = (String)request.getAttribute("userName"); %>
<%-- <%=name%> --%>

 
 
<h2><%=name%> Page!</h2>
	<a href="addBooks.jsp">Add</a>
	<span>|</span>
	<a href="removeBooks.jsp">Remove</a>
	<span>|</span>
	<a href="display-books"> Display</a>
	<span>|</span>
	<a href="findById.jsp">Find</a>



	
</body>
</html>