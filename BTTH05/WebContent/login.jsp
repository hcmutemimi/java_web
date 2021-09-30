<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="main.css"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login</title>
</head>
<style>
   .content {
	width: 400px;
}
</style>
<body>
    <div class ="wrapper">
          <div class="content">
            <form action ="Login" method ="post">
            <h1>Login </h1> 
                <div class="wrap-input">
                     <label>Username</label> <span style="color:red">*</span>
                     <br><input class="input" type ="text" name ="name" />
                </div>
               <div class="wrap-input">
                    <label> Password</label> <span style="color:red">*</span>
                    <br><input class="input" type ="password" name ="password" />
               </div>
              
                <input type="submit" value ="Login" class="btn"/> 
                <a href="lostpass.html" target="_blank"id ="a">Click here to register?</a>
            </form>
          </div>
       </div>

</body>
</html>