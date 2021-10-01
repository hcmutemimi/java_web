<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="main.java.Model.User" %>
    <%@page import ="main.java.Utilities.Common" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>You are successfully logged in !</title>
</head>
<body>
	<%
		User login =(User)request.getAttribute(Common.LOGIN);
		out.print("Welcome "+ login.getName());
	%>
</body>
</html>