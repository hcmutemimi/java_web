<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login Form</title>
</head>
<style>
    body {
        font-size: 16px;
    }
    .form {
      align-items: center;
    
      justify-content: center;
      width: 30%;
      margin-left: auto;
      margin-right: auto;
 
    }
    .item {
        margin-bottom: 30px;
    }
    input {
        border: 1px solid #ccc;
        height: 36px;
        width: 100%;
        background-color: #eee;
        padding: 0 10px;
    }
    .label {
        margin-bottom: 10px;
        display: block;
    }
</style>
<body>
    <form action="" class="form">
        <h1 style="text-align: center">Login </h1>
        <div class="item">
         <span class="label">Username or Email address <span style ="color: red">*</span></span>
          <input type="text" class="input" value="">
        </div>
       <div class="item">
         <span class="label">Password <span style ="color: red">*</span></span>
          <input type="text" class="input" value="">
        </div>
      
     <div style="display: flex; margin-bottom: 20px;">
      <input type="submit" value="LOGIN" style ="width: 100px; color: black">
      <div style="display: flex; align-items: center;">
         <input type="checkbox" id="" value="" style="width: 18px; height: 18px; margin: 0 10px;"> 
        <span style="flex: 1;">Remember me</span></div>
      
     </div>
     <a href="" style="text-decoration: underline;">Lost your password?</a>
      
 </form> 
</body>
</html>