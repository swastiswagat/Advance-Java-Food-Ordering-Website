package com.foodorder.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FoodItemServlet")
public class FoodItemServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if ("add".equals(action)) {
            // Code to add a food item
        } else if ("update".equals(action)) {
            // Code to update a food item
        } else if ("delete".equals(action)) {
            // Code to delete a food item
        }
        
        response.sendRedirect("ManageFoodItems.jsp");
    }
}
