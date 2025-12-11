<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHRMS</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<style>/* General Styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-color: #f4f4f4;
    color: #333;
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

/* Hero Section */
.hero {
    background: url('images/hr-background.jpg') no-repeat center center/cover;
    text-align: center;
    padding: 80px 20px;
    color: white;
}

.hero h2 {
    font-size: 2.5em;
    margin-bottom: 10px;
}

.hero p {
    font-size: 1.2em;
    margin-bottom: 20px;
}

.btn {
    background: #ffcc00;
    color: #333;
    padding: 12px 20px;
    text-decoration: none;
    font-size: 1.2em;
    border-radius: 5px;
    font-weight: bold;
}

.btn:hover {
    background: #e6b800;
}

/* Sections */
section {
    padding: 40px 20px;
    text-align: center;
    background: white;
    margin: 10px auto;
    width: 80%;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Services */
#services ul {
    list-style: none;
    padding: 0;
}

#services li {
    background: #004080;
    color: #fff;
    margin: 10px 0;
    padding: 15px;
    border-radius: 5px;
    font-size: 1.2em;
}

/* Footer */
footer {
    text-align: center;
    background: #004080;
    color: white;
    padding: 15px 0;
    margin-top: 20px;
}
nav ul li.active a {
    color: #ffcc00;
}
</style>
<body>
    <header>
        <h1>Human Resource Management System</h1>
        <nav>
            <ul>
                <li class=" active"><a href="home.jsp">Home</a></li>
                <li><a href="loginemployee.jsp">Login</a></li>
                <li><a href="signup.jsp">Register</a></li>
                <li><a href="loginadmin.jsp">Admin</a></li>
            </ul>
        </nav>
    </header>
    
    <section class="hero">
        <h2 style=" color: black">Efficient HR Solutions for Your Business</h2>
        <p style=" color: black">Manage employees, track attendance, and streamline HR operations.</p>
        <a href="loginemployee.jsp" class="btn">Get Started</a>
    </section>
    
    <section id="about">
        <h2>About Us</h2>
        <p>Our HR management system helps businesses handle employee records, payroll, and recruitment seamlessly.</p>
    </section>
    
    <section id="services">
        <h2>Our Services</h2>
        <ul>
            <li>Employee Management</li>
            <li>Payroll Processing</li>
            <li>Attendance Tracking</li>
            <li>Recruitment & Onboarding</li>
        </ul>
    </section>
    
    <section id="contact">
        <h2>Contact Us</h2>
        <p>Email: support@hrm.com | Phone: +123 456 7890</p>
    </section>
    
    <footer>
        <p>&copy; 2025 Human Resource Management. All rights reserved.</p>
    </footer>
</body>
</html>
