package com.foodorder.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

private String jdbcURL = "jdbc:mysql://localhost:3306/food_order_db";
private String jdbcUsername = "root";
private String jdbcPassword = "swasti@5121";

public LoginServlet() {
super();
}
private Connection getConnection() throws SQLException {
Connection connection = null;
try {
Class.forName("com.mysql.cj.jdbc.Driver");
connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
return connection;
}
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
String email = request.getParameter("email");
String password = request.getParameter("password");

String sql = "SELECT * FROM users WHERE email = ?";

try (Connection connection = getConnection();
PreparedStatement statement = connection.prepareStatement(sql)) {

statement.setString(1, email);

ResultSet resultSet = statement.executeQuery();

if (resultSet.next()) {
String dbPassword = resultSet.getString("password");

if (dbPassword.equals(password)) {
HttpSession session = request.getSession();
session.setAttribute("username", resultSet.getString("name"));
session.setAttribute("loginSuccess", true);
response.sendRedirect("index.jsp");
} else {
response.sendRedirect("login.jsp?error=true");
}
} else {
response.sendRedirect("login.jsp?error=true");
}
} catch (SQLException e) {
e.printStackTrace();
response.sendRedirect("login.jsp?error=true");
}
}

protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
doPost(request, response);
}
}