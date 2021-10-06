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
    body {
        display: flex;
        justify-content: center;
    }
    .wrap-input {
        margin-bottom: 20px;
    }
    .input {
        width: 300px;
        height: 36px;
        border-radius: 8px;
        border: none;
        outline: 0;
        padding: 0 10px;
        margin-top: 10px;
        background-color: #ccc

    }
    .btn {
        min-width: 100px;
        height: 36px;
        border-radius: 4px;
        border: none;
        background-color: rgb(94, 78, 233);
        color: #fff;
         cursor: pointer;
    }
</style>
<body>
    <div class ="wrapper">
        <h1>Add employee </h1> 
            <form action ="insert.jsp" method ="post">
                <div class="wrap-input">
                     <label>Name </label> 
                     <br><input class="input" type ="text" name ="name" />
                </div>
               <div class="wrap-input">
                    <label> Email</label>
                    <br><input class="input" name ="email" />
               </div>
               <div class="wrap-input">
                    <label> Country</label>
                    <br><input class="input"  name ="country" />
               </div>
                <input type="submit" value ="Add employee" class="btn"/> 
             
            </form>
       </div>

</body>
</html>