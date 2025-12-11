<%-- 
    Document   : emppayrollview
    Created on : Nov 23, 2024, 9:01:37 PM
    Author     : datapoint
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="employeenavbar.jsp" %>
<html>
    <head>
        <title>Leave Report List</title>

        <style type="text/css">
            #nav{
                background:  #160046;

            }
            #nav>.navbar-brand{
                background: white;

            }
            #leave {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #leave td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #leave tr:nth-child(even){background-color: #f2f2f2;}

            #leave tr:hover {background-color: #ddd;}

            #leave th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;

            }
            #top{
                text-align: center;
            }


        </style>
    </head>
    <body>




        <div class="row">

            <div class="container">
                <h3 id="top">View  Payroll</h3>
                <hr>
                <div class="container text-left">


                </div>
                <br>
                <table id="leave" class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="background-color: #f5d997 ;">ID</th>
                            <th style="background-color: yellow;">Payroll&nbsp;Month</th>
                            <th style="background-color: yellow;">Employee Name</th>
                            <th style="background-color: silver;">Position</th>                          
                            <th style="background-color: #ffcf03;width: 18%;">Basic Salary</th>
                            <th style="background-color: #008cff;width: 17%;" >Allowances</th>	
                            <th style="background-color: #008cff;width: 21%;" >Deductions</th>
                            <th style="background-color: Green;color:white;" >Net Salary</th>
                            <th style="background-color: red;color:white;" >Download</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%    try {
                                String username = (String) session.getAttribute("empusername");
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chrms", "root", "root");

                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("SELECT * FROM payroll_info where employee_name='" + username + "'");

                                while (rs.next()) {
                                    int id = rs.getInt("id");
                        %>
                        <tr>
                            <td><%= id%></td>
                            <td><%=rs.getString("payrollmonth")%></td>
                            <td><%=rs.getString("employee_name")%></td>
                            <td><%=rs.getString("position")%></td>
                            <td><%=rs.getDouble("basic_salary")%></td>
                            <td><%=rs.getDouble("allowances")%></td>
                            <td><%=rs.getDouble("deductions")%></td>
                            <td><%=rs.getDouble("net_salary")%></td>
                            <td><a href="downloadPDF.jsp?id=<%=id%>">Download</a></td>
                        </tr>

                        <%
                                }

                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>

                    </tbody>

                </table>
            </div>
        </div>
    </body>