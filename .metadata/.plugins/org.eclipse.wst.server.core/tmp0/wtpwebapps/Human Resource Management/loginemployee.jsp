<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employee Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: #eef3f8;
        padding-top: 90px;
        padding-bottom: 60px;
    }

    header {
        background: #003366;
        color: white;
        padding: 12px 25px;
        position: fixed;
        top: 0;
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 2px 6px rgba(0,0,0,0.2);
    }

    header h1 {
        font-size: 22px;
        font-weight: 600;
    }

    nav ul {
        list-style: none;
        display: flex;
        gap: 22px;
    }

    nav ul li a {
        color: white;
        text-decoration: none;
        padding: 6px 10px;
        border-radius: 4px;
        transition: 0.3s;
    }

    nav ul li a:hover, nav ul li.active a {
        background: rgba(255,255,255,0.2);
        color: #ffcc00;
    }

    .login-container {
        width: 450px;
        background: #fff;
        padding: 35px;
        margin: 90px auto;
        border-radius: 12px;
        box-shadow: 0 0 12px rgba(0,0,0,0.1);
        text-align: center;
    }

    .login-container h2 {
        margin-bottom: 25px;
        color: #003366;
    }

    form {
        display: grid;
        row-gap: 18px;
        text-align: left;
    }

    label {
        font-weight: bold;
    }

    .error {
        color: red;
        font-size: 14px;
        margin-top: 4px;
    }

    input[type="text"], input[type="password"] {
        height: 40px;
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 6px;
    }

    input[type="submit"] {
        height: 45px;
        background: #003366;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 18px;
        cursor: pointer;
    }

    footer {
        background: #003366;
        color: white;
        padding: 10px;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
</style>
</head>

<body>

<header>
    <h1>Human Resource Management System</h1>
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li class="active"><a href="loginemployee.jsp">Login</a></li>
            <li><a href="signup.jsp">Register</a></li>
            <li><a href="loginadmin.jsp">Admin</a></li>
        </ul>
    </nav>
</header>

<div class="login-container">
    <h2>Employee Login</h2>

    <form action="employeelogin" method="post">

        <div>
            <label>Enter Username:</label>
            <input type="text" name="username" 
                   value="${enteredUsername}"
                   placeholder="Enter your username" required>

            <!-- Username error -->
            <c:if test="${not empty usernameError}">
                <p class="error">${usernameError}</p>
            </c:if>
        </div>

        <div>
            <label>Enter Password:</label>
            <input type="password" name="password" placeholder="Enter your password" required>

            <!-- Password error -->
            <c:if test="${not empty passwordError}">
                <p class="error">${passwordError}</p>
            </c:if>
        </div>

        <!-- Combined login error -->
        <c:if test="${not empty loginError}">
            <p class="error">${loginError}</p>
        </c:if>

        <input type="submit" value="Login">
    </form>
</div>

<footer>
    <p>&copy; 2025 Human Resource Management System</p>
</footer>

</body>
</html>
