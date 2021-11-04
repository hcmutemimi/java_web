<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="main.css"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert employee</title>
   
<style>
.content {
	width: 400px;
	margin-left: auto;
	margin-right: auto;
	height: calc(100vh - 19.2vh);
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="content">
<form action="Employee" method="post" >
<h2>Add an Employee</h2>
	 <div class="wrap-input">
          <label>Name</label> 
          <br><input class="input" type ="text" name ="name" />
     </div>
    
     <div class ="gender wrap-input">
      <label> Gender:</label> 
	  <label for="male">Male</label>
	  <input type="radio" id="" name="gender" value="male">
	  <label for="female">Female</label>
	  <input type="radio" id="" name="gender" value="female">
     
     </div>
     <div class ="wrap-input">
       <input type="date" class="input" name="begin" 
        placeholder="dd-mm-yyyy" value="">
     </div>
      <div class ="wrap-input">
       <label> Department:</label> <br/>
      <select name="department" class="input">
	  <option value="fa">FA</option>
	  <option value="fb">FB</option>
	  <option value="fc">FC</option>
	</select>
     </div>
     <input type="submit" value ="Add Employee" class="btn"/> 

</form>

</div>
<%@include file = "footer.jsp" %>
</body>
</html>