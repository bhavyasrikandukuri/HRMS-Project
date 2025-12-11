<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<title>employee login</title>
<meta charset="ISO-8859-1">
<style>
    form{
         display: grid;
         justify-content: center;
         row-gap: 20px;
         margin-top: 100px;
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
  color:black   ;
  
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
        <h1 style=" color: white">Human Resource Management System</h1>
        <nav>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li class="active"><a href="loginemployee.jsp">Login</a></li>
                <li><a href="signup.jsp">Register</a></li>
                <li><a href="loginadmin.jsp">Admin</a></li>
            </ul>
        </nav>
    </header>
  <h1> EMPLOYEE LOGIN</h1>
    <form action="employeelogin" method="post">
   
        <label style=" font-weight: bold">Enter username:</label> <input type="text" name="username" placeholder="Enter your username" >  
        <label style=" font-weight: bold">Enter password: </label> <input type="password" name="password" placeholder="Must be in Number">  
   
   <input type="submit" style="background-color: blue; color:white;" value="login">
     </form>
     
</html>