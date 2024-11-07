package com.foodorder.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/admin/login")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if ("admin@gmail.com".equals(username) && "admin1234".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("isAdmin", true);
            session.setAttribute("username", username);
            response.sendRedirect(request.getContextPath() + "/admin/dashboard");
        } else {
            request.setAttribute("errorMessage", "Invalid credentials.");
            request.getRequestDispatcher("/admin/adminLogin.jsp").forward(request, response);
        }
    }
}
