<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-top: 30px
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<body>

<sql:setDataSource var="mysql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/company" user="root" password="16110152"/>
<sql:query dataSource="${mysql}" var="result">
	SELECT*FROM Employees
</sql:query>
<div style="display: flex, justify-content: center">
<div><h3>User Management</h3>
<a href="./add-employee.jsp">Add new employee</a></div>
</div>


<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Country</th>
<th>Actions</th>
</tr>
<c:forEach var ="row" items="${result.rows}" varStatus="loop">
<tr>
	<td>
	<c:out value="${loop.index+1}" />
	</td>
	<td>
		<c:out value="${row.name}" />
	</td>
	<td>
		<c:out value="${row.email}" />
	</td>
	<td>
		<c:out value="${row.country}" />
	</td>
	<td style =" display: flex;justify-content: space-between; ">
	<a href="edit-employee.jsp?id=<c:out value="${row.id}"/>">Update</a>
	 <a href="delete.jsp?id=<c:out value="${row.id}"/>">Delete</a>
	
	</td>
</tr>
</c:forEach>

</table>


</body>

</html>