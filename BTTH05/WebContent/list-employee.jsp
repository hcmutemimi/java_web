<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="main.css"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>List employee</title>
   
<style>
.content {
width: 100%;
padding: 0 30px;
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
</head>
<body>
<div class="wrapper">
<div class="content">
<h2>List employees</h2>
<table>
  <tr>
    <th>Id</th>
    <th>Employee Name</th>
    <th>Gender</th>
     <th>Date of Birthday</th>
    <th>Department Name</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
     <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>

</table>
</div>
</div>

</body>
</html>