<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<title>EMPLOYEE SIGNUP</title>
<meta charset="ISO-8859-1">
<style>
    form{
         display: grid;
         justify-content: center;
         row-gap: 20px;
         margin-top: 50px;
}
  form>input{
    height: 27px;
    width: 400px;
  }
  input::placeholder {
    font-size: 22px;
    text-align: center;
  }
 
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-color: #f4f4f4;
    color: #333;
}
  h1{
  margin-top:50px;
  text-align: center;
  color:white;
  
  }
  /* Header */
header {
    background: #004080;
    color: #fff;
    padding: 15px 20px;
    text-align: center;
}

nav ul {
    list-style: none;
    padding: 0;
    margin: 10px 0 0;
    display: flex;
    justify-content: center;
}

nav ul li {
    margin: 0 15px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-weight: bold;
}

nav ul li a:hover {
    color: #ffcc00;
}
nav ul li.active a {
    color: #ffcc00;
}

     
</style>
<title>login</title>
</head>
    <header>
        <h1>Human Resource Management System</h1>
        <nav>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="loginemployee.jsp">Login</a></li>
                <li class="active"><a href="signup.jsp">Register</a></li>
                <li><a href="loginadmin.jsp">Admin</a></li>
            </ul>
        </nav>
    </header>
<h1 style="color: #333"> EMPLOYEE SIGNUP</h1>
    <form action="signupe" method="post">
   
        <label style=" font-weight: bold">Enter Email: </label> <input type="text" name="username" placeholder="Enter your Email" >  
        <label style=" font-weight: bold">Enter Name:</label> <input type="text" name="name" placeholder="Enter your FullName" >  
        <label style=" font-weight: bold">Enter password:</label> <input type="password" name="password" placeholder="Must be in Number"> 
        <label style=" font-weight: bold">Enter Date Of Birth:</label> <input type="date" name="date"   placeholder="dd-mm-yyyy" value=""  min="1945-01-01" max="2030-12-31">
   
   <input type="submit" style="background-color: blue; color:white;" value="SIGN UP">
     </form>
</html>