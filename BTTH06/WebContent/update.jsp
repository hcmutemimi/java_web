<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

    <sql:setDataSource var="mysql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/company" user="root" password="16110152"/>
      <sql:update dataSource="${mysql}" var="result">
         UPDATE employees SET name=?, email=?,country=? WHERE id= ?;
         <sql:param value="${param.name}" />
         <sql:param value="${param.email}" />
         <sql:param value="${param.country}" />
       <sql:param value="${param.id}" />
      </sql:update>
      <c:if test="${result>0}">
         <c:redirect url="index.jsp" >
         </c:redirect>
      </c:if>
       <c:if test="${result<=0}">
         <c:out value="Có lỗi xảy ra, vui lòng thử lại sau!"/>
      </c:if>
</body>
</html>