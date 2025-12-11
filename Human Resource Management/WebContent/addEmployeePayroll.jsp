<%-- 
    Document   : addEmployeePayroll
    Created on : Nov 19, 2024, 10:38:31 AM
    Author     : datapoint
--%>
<%@page import="com.HRmanagementsystem.DB_util.DB_Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.YearMonth"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="adminNavbar.jsp" %>
<html>
    <head>
        <title>leave request</title>
        <meta charset="ISO-8859-1">
        <style>
            #fom{
                display: grid;
                justify-content: center;
                row-gap: 20px;
                margin-top: 100px;
            }
            #fom>input{
                height: 27px;
                width: 400px;
            }

            body{
                background-color:rgb(6, 186, 251) ;
            }
            #leaveapp{
                margin-top:50px;
                text-align: center;
                color:white;

            }


        </style>
        <title>Application</title>
    </head>
    <body>
        <h1 id="leaveapp"> Add Employee Payroll </h1><br/>
        <h1 id="leaveapp"> <a href="adminviewPayroll.jsp">View Payroll Records</a></h1>
        <%        LocalDate today = LocalDate.now();

            // Get the YearMonth for the current year and month
            YearMonth yearMonth = YearMonth.of(today.getYear(), today.getMonthValue());

            // Get the last day of the current month
            LocalDate lastDateOfMonth = yearMonth.atEndOfMonth();

        %>
        <form id="fom" action="addEmployeePayroll.jsp" method="post">  
            Payroll Month:<input type="date" name="currentMonth"   value="<%=lastDateOfMonth%>" readonly="">
            <label>Employee Name:</label>
            <!--            <input type="text" name="employee_name" required>-->
            <select name="employee_name" required="">
                <option value="">Select the Employee Name </option>

                <%      Connection conn1 = null;
                    PreparedStatement ps1 = null;
                    ResultSet rs1 = null;
                    try {
                        conn1 = DB_Connect.getConnection();
                        String sqlQuery = "select DISTINCT username from employee";
                        ps1 = conn1.prepareStatement(sqlQuery);
                        rs1 = ps1.executeQuery();
                        while (rs1.next()) {
                            String email = rs1.getString("username");

                %>
                <option value="<%=email%>"><%=email%></option>
                <%
                        }
                    } catch (Exception e) {
                    }

                %>
            </select>
        </select>
        <label>Position:</label>
        <input type="text" name="position" required>
        <label>Basic Salary:</label>
        <input type="number" name="basic_salary" required>
        <label>Allowances:</label>
        <input type="number" name="allowances" required>
        <label>Deductions:</label>
        <input type="number" name="deductions" required>
        <button type="submit">Add Payroll</button>
    </form>
    <%            if (request.getMethod().equals("POST")) {
            String name = request.getParameter("employee_name");
            String position = request.getParameter("position");
            String payrollMonth = request.getParameter("currentMonth");
            double basicSalary = Double.parseDouble(request.getParameter("basic_salary"));
            double allowances = Double.parseDouble(request.getParameter("allowances"));
            double deductions = Double.parseDouble(request.getParameter("deductions"));
            double netSalary = basicSalary + allowances - deductions;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chrms", "root", "root");

                String query = "INSERT INTO payroll_info (payrollmonth,employee_name, position, basic_salary, allowances, deductions, net_salary) VALUES (?,?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setString(1, payrollMonth);
                stmt.setString(2, name);
                stmt.setString(3, position);
                stmt.setDouble(4, basicSalary);
                stmt.setDouble(5, allowances);
                stmt.setDouble(6, deductions);
                stmt.setDouble(7, netSalary);
                stmt.executeUpdate();

                out.println("<p>Payroll information added successfully!</p>");
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>

</body>
</html>