<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Checkout - Food Order System</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <header>
        <h1>Checkout</h1>
    </header>
    <div class="checkout-container">
        <form action="OrderServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>
            
            <label for="payment">Payment Method:</label>
            <select id="payment" name="payment" required>
                <option value="credit">Credit Card</option>
                <option value="paypal">PayPal</option>
                <option value="cod">Cash on Delivery</option>
            </select>
            
            <button type="submit">Place Order</button>
        </form>
    </div>
    <footer>
        <p>&copy; 2024 Food Order System</p>
    </footer>
</body>
</html>
