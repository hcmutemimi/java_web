<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>/login.html</title>
</head>

<style>
	.all{
		width: 312px;
		height:360px;
		position: absolute;
		left:0;
		top:0;
		bottom:40px;
		right:0;
		margin:auto;
}
	.content {
		width: 312px;
		height:350px;
		padding:0px;
		box-shadow: 1px 1px 2px rgba(0,0,0,0.125);
		border:1px ridge #e0e0e0;
			
}
	.error{
		color:red;
		padding:5px;
}
	.title{
		background-color: #cfd6cd;
		padding:10px;
}
	.wrap-input{
		padding:10px;
}	
	.input{
		width: 270px;
		border:1px ridge #e0e0e0 ;
		font-size: 15px;
		padding:8px 10px;
		border-radius: 3px;
}
	.input:hover{
		border: 1px groove;
		border-color: #26dcff;
		box-shadow: 1px 1px 2px rgba(0,0,0,0.125);
}
	.input_error{
		width: 270px;
		background-color: #fad9df;
		border:1px  ridge red ;
		font-size: 15px;
		padding:8px 10px;
		border-radius: 3px;
}
	.input_error:hover{
		background-color:white;
		border: 1px groove;
		border-color: #26dcff;
		box-shadow: 1px 1px 2px rgba(0,0,0,0.125);
}
	.button{
		font-size:15px;
		padding:8px 10px;
		border:0;
		cursor:pointer;
		border-radius:4px;
		align-items: center;
		color:white;
		background-color:#24d439;
		width: 290px;
}
	.button:hover{
		background:#7be188;
}
	.a{
		text-decoration:none;
		color:blue;
}
	.a:hover{
		text-decoration:underline;
}
</style>

<body>
	<div class="all">
		<div class="error"><i class="fa fa-exclamation-triangle" aria-hidden="true" style="color:red;"></i>
				Confirm password is incorrect </div>
		<div class="content">		
			<div class="title">Register</div>
			<form action ="RegisterController" method ="post" class="register_form">
				<div class="wrap-input">
	            	<input class="input" type ="text" name ="username" placeholder="User name" 
	            		value="${user.username}" maxlength="30" required="required"/>
	            </div>
				<div class="wrap-input">
	            	<input class="input" type ="email" name ="email" placeholder="E-mail" 
	            		value="${user.email}" required="required"/>
	            </div>
	            <div class="wrap-input">
	            	<input class="input_error" type ="password" name ="password" placeholder="Password" 
	            		value="${user.password}" maxlength="30" required="required"/>
	            </div>
	            <div class="wrap-input">
	            	<input class="input_error" type ="password" name ="re_password" placeholder="Re Password" 
	            		value="${user.re_password}" maxlength="30" required="required"/>
	            </div>
	            <div class="wrap-input">
		            <input type="submit" value= "Register" class="button"/><br><br>
		            <a href="/login/login.jsp" class ="a">Click here to Login</a>
	            </div>
			</form>
			
		</div>
	</div>
</body>
</html>