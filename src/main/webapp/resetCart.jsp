<%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession mysession = request.getSession();
    mysession.removeAttribute("cart");
    response.sendRedirect("cart.jsp");
%>
