<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Handle Login</title>
</head>
<body>
<% 
	String name = request.getParameter("name");
    String password = request.getParameter("password");
    if(name.equals("admin") && password.equals("123456"))  {
    	session.setAttribute("username", name);
    	response.sendRedirect("./home.jsp");
    	
    }else {
    	response.sendRedirect("./login-error.jsp");
    }
%>
</body>
</html>