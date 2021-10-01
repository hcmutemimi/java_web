<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
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
        <h1 style="text-align: center">Register </h1>
        <div class="item">
         <span class="label">Phone </span>
          <input type="text" class="input" value="">
        </div>
        <div style="display: flex; justify-content: space-between;">
            <div class="item" style="width: 45%;">
                <span class="label">First name  <span style ="color: red">*</span></span>
                 <input type="text" class="input" value="">
               </div>
               <div class="item"  style="width: 45%;">
                <span class="label">Last name  <span style ="color: red">*</span></span>
                 <input type="text" class="input" value="">
               </div>
        </div>
       <div class="item">
         <span class="label">Email address <span style ="color: red">*</span></span>
          <input type="text" class="input" value="">
        </div>
        <div class="item">
            <span class="label">Password <span style ="color: red">*</span></span>
             <input type="text" class="input" value="">
           </div>
      
     <div style="display: flex; margin-bottom: 20px;">
      <input type="submit" value="REGISTER" style ="width: 100px;">
     
     </div>
      
 </form> 
</body>
</html>