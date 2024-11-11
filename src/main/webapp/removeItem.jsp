<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String itemId = request.getParameter("itemId");
%>
<jsp:forward page="RemoveItemServlet?itemId=<%= itemId %>" />
