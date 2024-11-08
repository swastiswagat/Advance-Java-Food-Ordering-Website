<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu - Food Order System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .menu-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    padding: 20px;
    background-color: #f4f4f4;
}

.menu-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 20px;
}

.menu-item {
    margin: 10px;
    padding: 20px;
    background-color: white;
    border: 1px solid #ccc;
    border-radius: 15px;
    width: 270px;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s;
}

.menu-item:hover {
    transform: translateY(-10px);
}

.menu-item img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    border-radius: 15px;
}

.menu-item h3 {
    margin: 15px 0;
    font-size: 1.4em;
    color: #333;
}

.menu-item p {
    font-size: 0.95em;
    color: #777;
}

.menu-item label {
    display: block;
    margin: 10px 0;
    font-size: 1em;
    color: #333;
    font-weight: bold;
}

.menu-item input[type="number"] {
    width: 50px;
    padding: 5px;
    margin-right: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    text-align: center;
    font-size: 1em;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: border-color 0.3s ease;
}

.menu-item input[type="number"]:focus {
    border-color: #ff6f61;
    outline: none;
}

.menu-item button {
    margin-top: 10px;
    padding: 10px 15px;
    background-color: #ff6f61;
    color: white;
    border: none;
    border-radius: 25px;
    cursor: pointer;
    font-size: 1em;
    width: 100%;
    transition: background-color 0.3s ease;
}

.menu-item button:hover {
    background-color: #ff4c3b;
}

.menu-item button + button {
    margin-top: 5px; 
}

.menu-item .quantity-section {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 10px;
}

        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #333;
            color: white;
        }
    </style>
</head>
<body>
`
<header>
    <h1>Our Menu</h1>
</header>

<div class="menu-container">
    <div class="menu-item">
        <img src="assets/biriyani.jpg" alt="Biryani">
        <h3>Biryani</h3>
        <p>Delicious and flavorful biryani</p>
        <label for="qty1">Quantity:</label>
        <input type="number" id="qty1" name="qty1" min="1" value="1">
        <button type="button" onclick="addToCart('Biryani', document.getElementById('qty1').value)">Add to Cart</button>
        <button type="button" onclick="orderNow('Biryani')">Order Now</button>
    </div>
    <div class="menu-item">
        <img src="assets/burger.jpg" alt="Burger">
        <h3>Burger</h3>
        <p>Juicy and tasty burgers</p>
        <label for="qty2">Quantity:</label>
        <input type="number" id="qty2" name="qty2" min="1" value="1">
        <button type="button" onclick="addToCart('Burger', document.getElementById('qty2').value)">Add to Cart</button>
        <button type="button" onclick="orderNow('Burger')">Order Now</button>
    </div>
    <div class="menu-item">
        <img src="assets/momo.jpg" alt="Momo">
        <h3>Momo</h3>
        <p>Steamed or fried momos with dip</p>
        <label for="qty3">Quantity:</label>
        <input type="number" id="qty3" name="qty3" min="1" value="1">
        <button type="button" onclick="addToCart('Momo', document.getElementById('qty3').value)">Add to Cart</button>
        <button type="button" onclick="orderNow('Momo')">Order Now</button>
    </div>
    <div class="menu-item">
        <img src="assets/chickentikka.jpg" alt="Chicken Tikka">
        <h3>Chicken Tikka</h3>
        <p>Spicy grilled chicken tikka</p>
        <label for="qty4">Quantity:</label>
        <input type="number" id="qty4" name="qty4" min="1" value="1">
        <button type="button" onclick="addToCart('Chicken Tikka', document.getElementById('qty4').value)">Add to Cart</button>
        <button type="button" onclick="orderNow('Chicken Tikka')">Order Now</button>
    </div>
    <div class="menu-item">
        <img src="assets/pizza.jpg" alt="Pizza">
        <h3>Pizza</h3>
        <p>Cheesy and delicious pizza</p>
        <label for="qty5">Quantity:</label>
        <input type="number" id="qty5" name="qty5" min="1" value="1">
        <button type="button" onclick="addToCart('Pizza', document.getElementById('qty5').value)">Add to Cart</button>
        <button type="button" onclick="orderNow('Pizza')">Order Now</button>
    </div>
    <div class="menu-item">
        <img src="assets/nood.jpg" alt="Noodles">
        <h3>Noodles</h3>
        <p>Spicy and tasty Noodles</p>
        <label for="qty6">Quantity:</label>
        <input type="number" id="qty6" name="qty6" min="1" value="1">
        <button type="button" onclick="addToCart('Noodles', document.getElementById('qty6').value)">Add to Cart</button>
        <button type="button" onclick="orderNow('Noodles')">Order Now</button>
    </div>
    <div class="menu-item">
        <img src="assets/Pakhalabhat.jpg" alt="Pakhal Bhata">
        <h3>Pakhal Bhat</h3>
        <p>Juicy and tasty Rice in Water with Dahi</p>
        <label for="qty7">Quantity:</label>
        <input type="number" id="qty7" name="qty7" min="1" value="1">
        <button type="button" onclick="addToCart('Pakhal Bhat', document.getElementById('qty7').value)">Add to Cart</button>
        <button type="button" onclick="orderNow('Pakhal Bhat')">Order Now</button>
    </div>
    <div class="menu-item">
        <img src="assets/dosa.jpg" alt="Dosa">
        <h3>Dosa</h3>
        <p>A special South Indian Dish</p>
        <label for="qty8">Quantity:</label>
        <input type="number" id="qty8" name="qty8" min="1" value="1">
        <button type="button" onclick="addToCart('Dosa', document.getElementById('qty8').value)">Add to Cart</button>
        <button type="button" onclick="orderNow('Dosa')">Order Now</button>
    </div>
</div>


<footer>
    <p>&copy; 2024 Food Order System</p>
</footer>

<script>
    function addToCart(itemName, quantity) {
        alert(quantity + ' ' + itemName + '(s) added to cart.');
    }

    function orderNow(itemName) {
        alert('Ordering ' + itemName);
    }
</script>

</body>
</html>
