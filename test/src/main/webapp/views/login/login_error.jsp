<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		height:275px;
		position: absolute;
		left:0;
		top:0;
		bottom:45px;
		right:0;
		margin:auto;
}
	body {
	 	font-family: Arial, Helvetica, sans-serif;
}
	.error{
		color:red;
		padding:5px;
}
	.content {
		width: 312px;
		height:275px;
		padding:0px;
		box-shadow: 1px 1px 2px rgba(0,0,0,0.125);
		border:1px ridge #e0e0e0;
	
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
		background-color: #fad9df;
		border:1px  ridge red ;
		font-size: 15px;
		padding:8px 10px;
		border-radius: 3px;
}
	.input:hover{
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
				Email or password error </div>
		<div class="content">
			<div class="title">Please Sign In</div>
			<form action ="login" method ="post" class="login_form">

				<div class="wrap-input">
	            	<input class="input" type ="email" name ="email_login" placeholder="E-mail" />
	            </div>
	            <div class="wrap-input">
	            	<input class="input" type ="password" name ="password_login" placeholder="Password"/>
	            </div>
	            <div class="wrap-input">
	            	<input type="checkbox" class="check" name="checkbox"/>
					<label for="checkbox">Remember Me</label><br>
	            </div>
	            <div class="wrap-input">
		            <input type="submit" value= "Login" class="button"/><br><br>
		            <a href="register" class ="a">Click here to Register</a>

	            </div>
			</form>
		</div>
	</div>
</body>
</html>