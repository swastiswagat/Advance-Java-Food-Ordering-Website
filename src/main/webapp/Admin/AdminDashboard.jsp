<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession mysession = request.getSession(false);
    if (session == null || session.getAttribute("adminUsername") == null) {
        response.sendRedirect("AdminLogin.jsp?error=Please login first");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
</head>
<body>
    <h1>Welcome, Admin!</h1>
    <ul>
        <li><a href="ManageFoodItems.jsp">Manage Food Items</a></li>
        <li><a href="ManageOrders.jsp">Manage Orders</a></li>
        <li><a href="ManageUsers.jsp">Manage Users</a></li>
    </ul>
    <a href="AdminLogoutServlet">Logout</a>
</body>
</html>
