<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: #eef3f8;
        color: #333;
        padding-top: 90px;
    }

    /* Header */
    header {
        background: #003366;
        color: white;
        padding: 12px 25px;
        position: fixed;
        top: 0;
        width: 100%;
        z-index: 1000;
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
        font-weight: bold;
        padding: 6px 10px;
        border-radius: 4px;
        transition: 0.3s;
    }

    nav ul li a:hover, nav ul li.active a {
        background: rgba(255,255,255,0.2);
        color: #ffcc00;
    }

    /* Login Card */
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
        font-size: 26px;
    }

    form {
        display: grid;
        row-gap: 18px;
    }

    label {
        font-weight: bold;
        text-align: left;
    }

    input[type="text"], input[type="password"] {
        height: 40px;
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
    }

    input::placeholder {
        font-size: 15px;
    }

    input[type="submit"] {
        height: 45px;
        background: #003366;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 18px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background: #00264d;
    }

    /* Responsive */
    @media (max-width: 600px) {
        .login-container {
            width: 90%;
            padding: 25px;
        }
        header h1 { font-size: 18px; }
        nav ul { gap: 12px; }
    }

footer {
        background: #003366;
        color: white;
        padding: 10px 0;
        text-align: center;
        position: fixed;
        bottom: 0;
        width: 100%;
        z-index: 1000;
    }

</style>
</head>
<body>

<header>
    <h1>Human Resource Management System</h1>
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="loginemployee.jsp">Login</a></li>
            <li><a href="signup.jsp">Register</a></li>
            <li class="active"><a href="loginadmin.jsp">Admin</a></li>
        </ul>
    </nav>
</header>

<div class="login-container">
    <h2>Admin Login</h2>

    <form action="adminlogin" method="post">
        <div>
            <label>Enter Username:</label>
            <input type="text" name="username" placeholder="Enter your username" required>
        </div>

        <div>
            <label>Enter Password:</label>
            <input type="password" name="password" placeholder="Enter your password" value="password" required>
        </div>

        <input type="submit" value="Login">
    </form>
</div>

<footer>
    <p>&copy; 2025 Human Resource Management System. All Rights Reserved.</p>
</footer>

</body>
</html>
