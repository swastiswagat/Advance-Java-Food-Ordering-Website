<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Order - Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="css/styles.css">
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
                    <li><a href="cart.jsp">Cart</a></li>

                    <% 
                        HttpSession mysession = request.getSession(false);
                        String username = (String) session.getAttribute("username");
                        Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");

                        if (username != null) { 
                    %>
                        <li><span>Welcome Dear, <%= username %>!</span></li>
                        
                        <% if (Boolean.TRUE.equals(isAdmin)) { %>
                            <li><a href="admin.jsp">Admin</a></li>
                        <% } %>
                        
                        <li><a href="LogoutServlet">Logout</a></li>
                    <% 
                        } else { 
                    %>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="register.jsp">Register</a></li>
                    <% 
                        } 
                    %>
                </ul>
            </nav>
        </div>
    </header>
    <div id="notification" class="notification"></div>
    <section class="hero">
        <div class="hero-content">
            <h1>Delicious Food, Delivered to You</h1>
            <p>Craving something tasty? Explore our diverse menu and get your favorite dishes delivered fast!</p>
            <div class="image-section">
                <img src="assets/hero.jpg" alt="Food Image" class="food-image">
                <a href="menu.jsp" class="btn">Explore Menu</a>
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

    <section class="features">
        <div class="container">
            <div class="feature-item">
                <i class="fas fa-utensils"></i>
                <h3>Fresh Ingredients</h3>
                <p>Our dishes are made with only the freshest ingredients for a flavorful experience.</p>
            </div>
            <div class="feature-item">
                <i class="fas fa-shipping-fast"></i>
                <h3>Quick Delivery</h3>
                <p>We ensure fast delivery so your food arrives hot and delicious, every time.</p>
            </div>
            <div class="feature-item">
                <i class="fas fa-star"></i>
                <h3>Top Quality</h3>
                <p>Our chefs prepare each meal with precision and care, giving you top-notch taste.</p>
            </div>
        </div>
    </section>
    
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
        showNotification("Login successful!");
    <% 
        } else if ("logout".equals(request.getParameter("success"))) { 
    %>
        showNotification("You have been logged out successfully.");
    <% } %>
</script>
    
</body>
</html>