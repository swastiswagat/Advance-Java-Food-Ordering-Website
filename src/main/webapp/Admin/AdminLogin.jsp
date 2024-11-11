<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Food Order</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">
                <img src="assets/logo.png" alt="Logo">
            </div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="menu.jsp">Menu</a></li>
                    
                    <% 
                        HttpSession mysession = request.getSession(false);
                        String adminUsername = (String) session.getAttribute("username");
                        Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");

                        if (Boolean.TRUE.equals(isAdmin)) { 
                    %>
                        <li><span>Welcome, <%= adminUsername %> (Admin)</span></li>
                        <li><a href="AdminManageMenu.jsp">Manage Menu</a></li>
                        <li><a href="AdminOrders.jsp">View Orders</a></li>
                        <li><a href="AdminUsers.jsp">Manage Users</a></li>
                        <li><a href="LogoutServlet">Logout</a></li>
                    <% 
                        } else { 
                    %>
                        <li><a href="login.jsp">Login</a></li>
                    <% 
                        } 
                    %>
                </ul>
            </nav>
        </div>
    </header>
   
    <div id="notification" class="notification"></div>
    <section class="admin-dashboard">
        <div class="container">
            <h1>Admin Dashboard</h1>
            <p>Welcome to the admin dashboard. Use the options below to manage the system.</p>

            <div class="admin-options">
                <a href="AdminManageMenu.jsp" class="btn"><i class="fas fa-utensils"></i> Manage Menu</a>
                <a href="AdminOrders.jsp" class="btn"><i class="fas fa-clipboard-list"></i> View Orders</a>
                <a href="AdminUsers.jsp" class="btn"><i class="fas fa-users"></i> Manage Users</a>
            </div>
        </div>
    </section>

    <% 
        Boolean loginSuccess = (Boolean) session.getAttribute("loginSuccess");

        if (loginSuccess != null && loginSuccess) { 
    %>
        <p style="color: green; text-align: center;"></p>
        <% session.removeAttribute("loginSuccess"); %> 
    <% } %>

    <% if ("logout".equals(request.getParameter("success"))) { %>
        <p style="color: green; text-align: center;"></p>
    <% } %>

    <footer>
        <div class="container">
            <p>&copy; 2024 Food Order Service. All Rights Reserved.</p>
        </div>
    </footer>

    <script>
    function showNotification(message) {
        const notification = document.getElementById("notification");
        notification.innerText = message;
        notification.classList.add("show");
        setTimeout(() => {
            notification.classList.remove("show");
        }, 3000);
    }
    <% 
        Boolean myloginSuccess = (Boolean) session.getAttribute("loginSuccess");
        if (loginSuccess != null && loginSuccess) { 
            session.removeAttribute("loginSuccess"); 
    %>
        showNotification("Admin login successful!");
    <% 
        } else if ("logout".equals(request.getParameter("success"))) { 
    %>
        showNotification("You have been logged out successfully.");
    <% } %>
    </script>
    
</body>
</html>
