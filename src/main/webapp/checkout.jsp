<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Checkout - Food Order System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f4f4f9;
            color: #333;
            min-height: 100vh;
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

        .checkout-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            max-width: 500px;
            padding: 20px;
            margin-top: 20px;

            border-radius: 10px;
        }

        .checkout-card {
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border: 1px solid #E0E0E0;
            width: 100%;
        }

        h2 {
            margin-bottom: 15px;
            font-size: 1.5rem;
            color: #FF5F5F;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #333333;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="number"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 1rem;
        }

        textarea {
            resize: vertical;
        }

        #card-details {
            display: none;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #FF7F7F;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #FF5F5F;
        }

        footer {
            margin-top: 20px;
            text-align: center;
            font-size: 0.9rem;
            color: #777;
        }

        footer p {
            padding: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Checkout</h1>
    </header>
    <div class="checkout-container">
        <form class="checkout-card" action="OrderServlet" method="post"> 
            <h2>Delivery Information</h2>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>

            <label for="city">City:</label>
            <input type="text" id="city" name="city" required>

            <label for="state">State:</label>
            <input type="text" id="state" name="state" required>

            <label for="zip">Zip Code:</label>
            <input type="text" id="zip" name="zip" required>

            <label for="instructions">Special Instructions:</label>
            <textarea id="instructions" name="instructions" rows="3" placeholder="Any specific instructions for the order"></textarea>

            <h2>Payment Information</h2>

            <label for="payment">Payment Method:</label>
            <select id="payment" name="payment" required>
                <option value="credit">Credit Card</option>
                <option value="paypal">PayPal</option>
                <option value="cod">Cash on Delivery</option>
            </select>

            <div id="card-details">
                <label for="card-number">Card Number:</label>
                <input type="text" id="card-number" name="card-number">

                <label for="expiry-date">Expiry Date:</label>
                <input type="text" id="expiry-date" name="expiry-date" placeholder="MM/YY">

                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv">
            </div>

            <button type="submit">Place Order</button>
        </form>
    </div>
    <footer>
        <p>&copy; 2024 Food Order System</p>
    </footer>

    <script>
        document.getElementById('payment').addEventListener('change', function () {
            const cardDetails = document.getElementById('card-details');
            cardDetails.style.display = (this.value === 'credit') ? 'block' : 'none';
        });
    </script>
</body>
</html>
