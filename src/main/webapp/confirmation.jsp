<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Confirmation - Food Order System</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f4f4f9;
            color: #333;
            min-height: 100vh;
            font-family: Arial, sans-serif;
        }

        header {
            width: 100%;
            background-color: #FF5F5F;
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: white;
            font-size: 2rem;
        }

        .confirmation-container {
            margin-top: 30px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        h2 {
            color: #FF5F5F;
            margin-bottom: 15px;
        }

        p {
            margin: 10px 0;
            font-size: 1.1rem;
        }

        .order-summary {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #E0E0E0;
            background-color: #f9f9f9;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Order Confirmation</h1>
    </header>
    <div class="confirmation-container">
        <h2>Thank you for your order!</h2>
        <p>Your order has been placed successfully.</p>
       
        <div class="order-summary">
            <h3>Order Summary</h3>
            <p><strong>Address:</strong> <%= request.getAttribute("address") %></p>
            <p><strong>City:</strong> <%= request.getAttribute("city") %></p>
            <p><strong>State:</strong> <%= request.getAttribute("state") %></p>
            <p><strong>Zip Code:</strong> <%= request.getAttribute("zip") %></p>
            <p><strong>Payment Method:</strong> <%= request.getAttribute("payment") %></p>
        </div>

        <p>We will deliver your order to the provided address shortly.</p>
    </div>
</body>
</html>
