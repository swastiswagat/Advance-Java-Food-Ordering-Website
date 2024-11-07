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
import java.util.List;

@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String URL = "jdbc:mysql://localhost:3306/food_order_db";
    private static final String USER = "root";
    private static final String PASSWORD = "swasti@5121";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        @SuppressWarnings("unchecked")
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

        if (cart != null && !cart.isEmpty()) {
            String sessionId = session.getId();
            try {
                saveCartToDatabase(sessionId, cart);
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error during checkout.");
                return;
            }

            session.removeAttribute("cart");
        }

        response.sendRedirect("orderConfirmation.jsp");
    }

    private void saveCartToDatabase(String sessionId, List<CartItem> cart) throws SQLException {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
            connection.setAutoCommit(false);
            String sql = "INSERT INTO cart_items (session_id, item_id, item_name, quantity, total) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                for (CartItem item : cart) {
                   
                    System.out.println("Saving item to DB: " + item.getItemId() + ", " + item.getItemName() + ", Quantity: " + item.getQuantity() + ", Total: " + item.getTotal());
                    
                    statement.setString(1, sessionId);
                    statement.setString(2, item.getItemId());
                    statement.setString(3, item.getItemName());
                    statement.setInt(4, item.getQuantity());
                    statement.setDouble(5, item.getTotal());
                    statement.addBatch();
                }
                statement.executeBatch();
                connection.commit();
            } catch (SQLException e) {
                connection.rollback();
                throw e;
            }
        }
    }
}
