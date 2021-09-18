<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Register user</title>
</head>
<style>
    body {
        font-size: 16px;
    }
    .form {
      align-items: center;
    
      justify-content: center;
      width: 60%;
      margin-left: auto;
      margin-right: auto;
 
    }
    .item {
        margin-bottom: 30px;
        display: flex;
    }
    input {
        border: 1px solid #ccc;
        height: 36px;
        width: 100%;
        padding: 0 10px;
        outline: none;
        
    }
    input.invalid {
	  	border: 1px solid red;
	}
	
	input.valid {
	  	border-color: #2db83d;
	}
    .label {
        margin-bottom: 10px;	
        display: block;
        width: 30%;
    }
    .require {
	    display: none;
	    color: red;
	    margin-left: 22%;
    }
    table {
	  font-family: arial, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	
	td, th {
	  border: 1px solid #dddddd;
	  text-align: left;
	  padding: 8px;
	}
	
	tr:nth-child(even) {
	  background-color: #dddddd;
	}
  
</style>
<body>
    <form action="" class="form">
        <h1 style="text-align: center">USER DETAIL </h1>
        <h4 id ="require" class="require" >Please fill all mandatory fields</h4>
       <div class="item">
         <span class="label">First Name <span style ="color: red">*</span></span>
          <input type="text" class="input" placeholder="Enter first name" value=""id="fname"onblur="validateInput(fname)" >
        </div>
          <div class="item">
         <span class="label">Last Name <span style ="color: red">*</span></span>
          <input type="text" class="input" placeholder="Enter last name" value=""id="lname"onblur="validateInput(lname)">
        </div>
          <div class="item">
         <span class="label">Email <span style ="color: red">*</span></span>
          <input class="input" placeholder="Enter email" value="" id="email" onblur="validateEmail(email)"/>
        </div>
         <h4 id="error_email" class ="require">Email không hợp lệ</h4>
        <div class="item">
            <span class="label">User Name <span style ="color: red">*</span></span>
             <input type="text" class="input" placeholder="enter user name" value=""id="user_name"onblur="validateInput(user_name)">
          </div>
          <div class="item">
            <span class="label">Password <span style ="color: red">*</span></span>
             <input type="password" class="input" placeholder="enter password"value=""id="password"onblur="validateInput(password)">
          </div>
          <div class="item">
            <span class="label">Confirm Password <span style ="color: red">*</span></span>
             <input type="password" class="input" placeholder="enter password again"value=""id="confirm_password"onblur="validatePasswordNotmatch(confirm_password)">
             
          </div>
          <h4 id="error_confirm" class ="require">Password not match</h4>
        	<div class="item">
             <input type="submit" id="submit" value="REGISTER" style ="width: 100px; background-color: #3895d3; color: #fff">
           </div>
           <div class="">
            <h4>User list</h4>
            <table id="list_user">
		  <tr>
		    <th>No</th>
		    <th>Fist Name</th>
		    <th>Last Name</th>
		    <th>Email</th>
		    <th>User name</th>
		  </tr>
		 
		</table>
           </div>
      
 </form> 
</body>
<script>
   var i = 0
	const submit = document.getElementById("submit")
	submit.addEventListener("click", validate);
	const lname = document.getElementById("lname")
	const fname = document.getElementById("fname")
	const email = document.getElementById("email")
	const user_name = document.getElementById("user_name")
	const password = document.getElementById("password")
	const confirm_password = document.getElementById("confirm_password")
	var email_pattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
	const require = document.getElementById("require")
	const error_confirm = document.getElementById("error_confirm")
	const error_email = document.getElementById("error_email")
	
	var patt = new RegExp(email_pattern);
	function validateInput(param) {
		if(!param.value) {
			param.classList.add("invalid");
		}
		else {
			param.classList.add("valid");
			require.style.display ='none'	
		}
	}
	function validateEmail(param) {
		if(param.value==''){
			param.classList.add("invalid");
		}
	  	else if(!patt.test(param.value)){
			param.classList.add("invalid");
			error_email.style.display ='block'
		}else {
			error_email.style.display ='none'
			param.classList.add("valid");
			require.style.display ='none'
			
		}
	}
	function validatePasswordNotmatch(param) {
		if(password.value !== confirm_password.value) {
			error_confirm.setAttribute("style", "display: block;")
			param.classList.add("invalid");
		}else {
			param.classList.add("valid");
			error_confirm.setAttribute("style", "display: none;")
			require.style.display ='none'
			
		}
	} 
	function validate(e) {
		e.preventDefault();
		if(!fname.value || !lname.value || !user_name.value|| !password.value || !email.value 
				|| !confirm_password.value){
			require.style.display ='block'
		}
		const arrayFields =[fname,lname,email,user_name,password,confirm_password]
		const check = arrayFields.every((e) =>{
			console.log(e.value)
			return e.value != ''
		})
		
		if(check) {
				i++;
				const table = document.getElementById("list_user")
				table.insertRow(i);
				table.rows[i].insertCell(0);
				table.rows[i].cells[0].innerHTML = i;
					 for(var j = 1; j<5; j++) {
						table.rows[i].insertCell(j);
						table.rows[i].cells[j].innerHTML = arrayFields[j-1].value;
					 }	  
			}
			
		
		
		
		
	}
	
</script>
</html>