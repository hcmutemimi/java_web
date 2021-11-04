<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Register</title>
    <style>
        form{
            width: 70vw;
            margin: auto auto;
        }

        input[type= "text"], input[type="password"]{
            width: 50vw;
        }

        input[type="submit"]
        {
            width: 90px;
            margin-right: 20px;
        }

        label{
            margin: 18px;
        }
    </style>
</head>
<body>
    <form action = "home" class = "text-center d-flex flex-column justify-content-center mt-5" method = "post">
        <h3>REGISTER</h3>
        <div class = "d-flex justify-content-center mt-4">
            <div class = "d-flex flex-column">
                <label class="float-right">User Name<span class = "text-danger">*</span></label>
                <label class="float-right">Password<span class = "text-danger">*</span></label>
                <label class="float-right">Confirm Password<span class = "text-danger">*</span></label>
            </div>
            <div class = "d-flex flex-column">
                <input type = "text" class = "m-2 p-2" placeholder="Enter user name" name = "username" required/>
                <input type = "password" class = "m-2 p-2" placeholder="Enter password" name = "password" required/>
                <input type = "password" class = "m-2 p-2" placeholder="Confirm password" name = "confirmPass" required/>
            </div>
        </div>
        <div>
            <input type = "submit" value = "REGISTER" class = "bg-primary text-light h-25 mt-3"/>
            <a href = "login">Login Account Here</a>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>