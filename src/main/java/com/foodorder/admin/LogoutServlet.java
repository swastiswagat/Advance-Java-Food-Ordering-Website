package com.foodorder.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the current session, if exists
        HttpSession session = request.getSession(false);

        // Check if a session exists
        if (session != null) {
            // Invalidate the session to log the user out
            session.invalidate();
        }

        // Redirect to the login page with a success message
        response.sendRedirect("login.jsp?success=logout");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Call doGet to handle logout via POST requests as well
        doGet(request, response);
    }
}
