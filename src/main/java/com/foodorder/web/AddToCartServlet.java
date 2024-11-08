package com.foodorder.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String URL = "jdbc:mysql://localhost:3306/food_order_db";
    private static final String USER = "root";
    private static final String PASSWORD = "swasti@5121";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String sessionId = session.getId();
        
        String itemId = request.getParameter("item_id");
        String itemName = request.getParameter("item_name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double total = Double.parseDouble(request.getParameter("total"));

        try {
            saveItemToDatabase(sessionId, itemId, itemName, quantity, total);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error during add to cart.");
            return;
        }
        response.sendRedirect("cart.jsp");
    }
    private void saveItemToDatabase(String sessionId, String itemId, String itemName, int quantity, double total) throws SQLException {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String sql = "INSERT INTO cart_items (session_id, item_id, item_name, quantity, total) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, sessionId);
                statement.setString(2, itemId);
                statement.setString(3, itemName);
                statement.setInt(4, quantity);
                statement.setDouble(5, total);
                
                statement.executeUpdate();
            }
        }
    }
}
