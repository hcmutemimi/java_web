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
	.icon_and_text{
		display: flex;
}
	.error{
		color:red;
}
	.error_icon{
		margin-right: 5px;
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
		<div class="icon_and_text">
			<div class="error_icon" style="display: none;"><i class="fa fa-exclamation-triangle" aria-hidden="true" style="color:red;"></i></div>
			<div class="error" id="error" >Email or password error</div>
		</div>
		<div class="content">
			<div class="title">Please Sign In</div>
			<form name="myForm" onsubmit="return validateForm()"action ="login" method ="post" class="login_form">
				<div class="wrap-input">
	            	<input id="input_e" class="input_error" type ="email" name ="email_login" placeholder="E-mail" 
	            	value="${login.email_login}" maxlength="50" />
	            </div>
	            <div class="wrap-input">
	            	<input id="input_p" class="input_error" type ="password" name ="password_login" placeholder="Password"
	            	value="${login.password_login}" maxlength="30" />
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
	
	<script type="text/javascript">
		function change_boder() {
			document.getElementById("input_e").className = "input";
			document.getElementById("input_p").className = "input";
		}
			
		function validateForm() {
			let error_icon = document.querySelector('.error_icon');
			let email = document.forms["myForm"]["email_login"].value;
			let pass = document.forms["myForm"]["password_login"].value;
			change_boder()
			
			if (email.length < 5) {
				document.getElementById("error").innerHTML 
					= "Email must be more than 5 character";
				error_icon.style.display='block';
				document.getElementById("input_e").className = "input_error";
				return false;
				}
			else if (pass.length < 8) {
				document.getElementById("error").innerHTML 
					= "Password must be more than 8 character and less than 30 character";
				error_icon.style.display='block';
				document.getElementById("input_p").className = "input_error";
				return false;
				}
			else{
				return true;
			}
		}
	</script>
</body>
</html>