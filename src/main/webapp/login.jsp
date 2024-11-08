<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Food Order System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        h1 {
            color: #333;
            font-size: 24px;
        }

        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
        }

        .login-container img {
            display: block;
            margin: 0 auto;
            margin-bottom: 20px;
            width: 100px;
            height: 100px; 
            border-radius: 50%;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input[type="email"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
            width: 100%;
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
        }

        button[type="submit"] {
            padding: 12px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        p a {
            color: #007bff;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }

        footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <header>
        <h1>Login</h1>
    </header>
    <div class="login-container">
        <img src="assets/logo.png" alt="Food Order Logo">

        <form action="LoginServlet" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>        
            <%
                String success = request.getParameter("success");
                if ("true".equals(success)) {
            %>
                <p style="color: green; text-align: center;">Registration successful! You can now log in.</p>
            <%
                } else if ("logout".equals(success)) {
            %>
                <p style="color: green; text-align: center;">You have been logged out successfully.</p>
            <%
                }
            %>
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/swastiswagat/Advance-Java-Food-Ordering-Website.git
            
            <%
                String error = request.getParameter("error");
                if ("true".equals(error)) {
            %>
                <p style="color: red; text-align: center;">Invalid email or password. Please try again.</p>
            <% } %>

            <button type="submit">Login</button>
        </form>
        <p>Don't have an account? <a href="register.jsp">Register here</a></p>
    </div>
    <footer>
        <p>&copy; 2024 Food Order System</p>
    </footer>
</body>
</html>
