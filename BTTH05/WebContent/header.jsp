<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
 integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Header</title>

</head>
<style>
body {
  margin: 0;
}

    .navbar {
      display: flex;
      justify-content: space-between;
      height: 60px;
      background-color: rgb(84, 84, 84);
    
    	width: 100%;
    }
    .title {
      font-size: 20px;
     
    }
    .active {
      color: #fff;
    }
    ul {
      display: flex;
      list-style: none;
      margin: 0;
      padding: 0
      
    }
    li {
      padding: 0 10px;
      display: flex;
      align-items: center;
    }
    a {
        text-decoration: none;
        color: #ccc;
    }
    .icon {
     margin-right: 10px;
     color: #ccc
    }
  </style>
  <body>
  
    <div class="wrapper">
      <div class="navbar">
        <ul>
          <li class="title "><i class="fas fa-home icon" ></i>
            <a href="./Login" class="active"> Home</a>
          </li>
          <li class="title">
           <%--  <jsp:forward page ="./add-employee.jsp"> Add employee
            	<jsp:param value="name" name="name"/>
            </jsp:forward> --%>
              <a href="./add-employee.jsp">Add employee</a>
          </li>
          <li class="title">
            <a href="">List employees</a>
          </li>
          <% String u1 = request.getParameter("name");
			 %>
        </ul>
        <ul>
          <li class="title"><i class="fas fa-user icon"></i>
            <a href="" style ="color: #FFDA00">
          		<%= u1%>
            </a>
          </li>
          <li class="title">
            <a href="">Log out</a><i class="fas fa-sign-out-alt" style ="margin-left: 10px; color: #ccc"></i>
          </li>
        </ul>
      </div>
     
    </div>
   <script type="text/javascript">
	 var a=<%= u1%>;
	 console.log('out',a)
	</script>
  </body>
	
</html>