<%@ page import="com.foodorder.web.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            background-color: #f0f4f8;
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 30px;
        }

        h1 {
            text-align: center;
            color: white;
            background-color: #ff6b6b;
            padding: 15px 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            font-size: 2.5em;
            margin-bottom: 20px;
            width: 100%;
            max-width: 800px;
        }

        .cart-container {
            max-width: 800px;
            width: 100%;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); 
            border-radius: 10px;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: #ff6b6b; 
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f7f7f7;
        }

        td {
            color: #555;
        }

        tr:last-child {
            font-weight: bold;
            background-color: #ffe0e0;
        }

        .empty-cart {
            text-align: center;
            font-size: 1.2em;
            color: #777;
            margin-top: 20px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .cart-button {
            padding: 10px 15px;
            border: none;
            color: white;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .checkout-button {
            background-color: #28a745;
        }

        .checkout-button:hover {
            background-color: #218838;
        }

        .reset-button {
            background-color: #dc3545;
        }

        .reset-button:hover {
            background-color: #c82333;
        }

        .remove-button {
            background-color: #ff6b6b;
        }

        .remove-button:hover {
            background-color: #ff4d4d;
        }

        .browse-button {
            display: inline-block;
            padding: 10px 15px;
            background-color: #ff6b6b;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .browse-button:hover {
            background-color: #ff4d4d;
        }
    </style>
</head>
<body>
    <h1>Your Cart</h1>
    <div class="cart-container">
        <%
            HttpSession mysession = request.getSession();
            List<CartItem> cart = (List<CartItem>) mysession.getAttribute("cart");

            if (cart != null && !cart.isEmpty()) {
        %>
                <table>
                    <tr>
                        <th>Item Name</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Action</th>
                    </tr>
                    <%
                        double grandTotal = 0.0;
                        for (CartItem item : cart) {
                            grandTotal += item.getTotal();
                    %>
                            <tr>
                                <td><%= item.getItemName() %></td>
                                <td><%= item.getQuantity() %></td>
                                <td>₹<%= item.getTotal() %></td>   
                                <td>
                                    <form action="removeItem.jsp" method="post" style="display: inline;">
                                        <input type="hidden" name="itemId" value="<%= item.getItemId() %>">
                                        <button type="submit" class="cart-button remove-button">Remove</button>
                                    </form>
                                </td>           
                            </tr>
                    <%
                        }
                    %>
                    <tr>
                        <td colspan="2"><strong>Grand Total:</strong></td>
                        <td>₹<%= grandTotal %></td>
                        <td></td>
                    </tr>
                </table>
                <div class="button-container">
                    <form action="checkout.jsp" method="post" style="display: inline;">
                        <button type="submit" class="cart-button checkout-button">Checkout</button>
                    </form>
                    <form action="resetCart.jsp" method="post" style="display: inline;">
                        <button type="submit" class="cart-button reset-button">Reset</button>
                    </form>
                </div>
        <%
            } else {
        %>
                <p class="empty-cart">Your cart is empty. <a class="browse-button" href="menu.jsp">Browse for items</a></p>
        <%
            }
        %>
    </div>
</body>
</html>
