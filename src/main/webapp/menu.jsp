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
	background-color:  #ff6b6b;
	color: white;
	padding: 15px;
	text-align: center;
}

.container {
    width: 80%; 
    margin: 0 auto;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 10px 0;
}

nav ul {
    display: flex;
    list-style: none;
    justify-content: center;
}

nav ul li {
    margin-left: 15px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-weight: 600;
    font-size: 0.9rem;
    padding: 8px 12px;
}

nav ul li a:hover {
    color: #f0f0f0;
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
    <header>
    <div class="container">
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="menu.jsp">Menu</a></li>
                    <li><a href="cart.jsp">Cart</a></li>
                    <li><a href="checkout.jsp">Checkout</a></li>
                    
              	</ul>
            </nav>
          </div>  	
	</header>
<div class="menu-container">
    <div class="menu-item">
        <img src="assets/biriyani.jpg" alt="Biryani">
        <h3>Biryani</h3>
        <p>Delicious and flavorful biryani</p>
        <p style="font-weight: bold;">Price: ₹250</p>
        <label for="qty1">Quantity:</label>
        <input type="number" id="qty1" name="qty1" min="1" value="1">
        <button type="button" onclick="addToCart('Biryani', 250, document.getElementById('qty1').value)">Add to Cart</button>
    </div>

    <div class="menu-item">
        <img src="assets/burger.jpg" alt="Burger">
        <h3>Burger</h3>
        <p>Juicy and tasty burgers</p>
        <p style="font-weight: bold;">Price: ₹150</p>
        <label for="qty2">Quantity:</label>
        <input type="number" id="qty2" name="qty2" min="1" value="1">
        <button type="button" onclick="addToCart('Burger', 150, document.getElementById('qty2').value)">Add to Cart</button>
    </div>

    <div class="menu-item">
        <img src="assets/momo.jpg" alt="Momo">
        <h3>Momo</h3>
        <p>Steamed or fried momos with dip</p>
        <p style="font-weight: bold;">Price: ₹90</p>
        <label for="qty3">Quantity:</label>
        <input type="number" id="qty3" name="qty3" min="1" value="1">
        <button type="button" onclick="addToCart('Momo', 90, document.getElementById('qty3').value)">Add to Cart</button>
    </div>

    <div class="menu-item">
        <img src="assets/chickentikka.jpg" alt="Chicken Tikka">
        <h3>Chicken Tikka</h3>
        <p>Spicy grilled chicken tikka</p>
        <p style="font-weight: bold;">Price: ₹250</p>
        <label for="qty4">Quantity:</label>
        <input type="number" id="qty4" name="qty4" min="1" value="1">
        <button type="button" onclick="addToCart('Chicken Tikka', 250, document.getElementById('qty4').value)">Add to Cart</button>
    </div>

    <div class="menu-item">
        <img src="assets/pizza.jpg" alt="Pizza">
        <h3>Pizza</h3>
        <p>Cheesy and delicious pizza</p>
        <p style="font-weight: bold;">Price: ₹350</p>
        <label for="qty5">Quantity:</label>
        <input type="number" id="qty5" name="qty5" min="1" value="1">
        <button type="button" onclick="addToCart('Pizza', 350, document.getElementById('qty5').value)">Add to Cart</button>
    </div>

    <div class="menu-item">
        <img src="assets/nood.jpg" alt="Noodles">
        <h3>Noodles</h3>
        <p>Spicy and tasty Noodles</p>
        <p style="font-weight: bold;">Price: ₹190</p>
        <label for="qty6">Quantity:</label>
        <input type="number" id="qty6" name="qty6" min="1" value="1">
        <button type="button" onclick="addToCart('Noodles', 190, document.getElementById('qty6').value)">Add to Cart</button>
    </div>

    <div class="menu-item">
        <img src="assets/pakhal.jpg" alt="Pakhal Bhat">
        <h3>Pakhal Bhat</h3>
        <p>Juicy and tasty Rice in Water with Dahi</p>
        <p style="font-weight: bold;">Price: ₹80</p>
        <label for="qty7">Quantity:</label>
        <input type="number" id="qty7" name="qty7" min="1" value="1">
        <button type="button" onclick="addToCart('Pakhal Bhat', 80, document.getElementById('qty7').value)">Add to Cart</button>
    </div>

    <div class="menu-item">
        <img src="assets/dosa.jpg" alt="Dosa">
        <h3>Dosa</h3>
        <p>A special South Indian dish</p>
        <p style="font-weight: bold;">Price: ₹160</p>
        <label for="qty8">Quantity:</label>
        <input type="number" id="qty8" name="qty8" min="1" value="1">
        <button type="button" onclick="addToCart('Dosa', 160, document.getElementById('qty8').value)">Add to Cart</button>
    </div>
</div>

<form id="cartForm" action="CartServlet" method="POST" style="display: none;">
    <input type="hidden" name="itemName" id="cartItemName">
    <input type="hidden" name="quantity" id="cartQuantity">
    <input type="hidden" name="total" id="cartTotal">
</form>

<div id="message" style="display: none; color: green; text-align: center; margin-top: 10px;"></div>

<script>
function addToCart(itemName, price, quantity) {
    quantity = parseInt(quantity);
    if (quantity < 1) {
        alert('Please enter a valid quantity');
        return;
    }

    const total = price * quantity;

    const form = document.getElementById('cartForm');
    document.getElementById('cartItemName').value = itemName;
    document.getElementById('cartQuantity').value = quantity;
    document.getElementById('cartTotal').value = total;
    const message = document.getElementById('message');
    message.textContent = `Added ${quantity} ${itemName}(s) to cart!`;
    message.style.display = 'block';
    setTimeout(() => {
        message.style.display = 'none';
    }, 2000);
    form.submit();
}
document.querySelectorAll('input[type="number"]').forEach(input => {
    input.addEventListener('change', function() {
        if (this.value < 1) {
            this.value = 1;
        }
    });
});
</script>


<footer>
    <p>&copy; 2024 Food Order System</p>
</footer>

<<<<<<< HEAD
<script>
    function addToCart(itemName, quantity) {
        alert(quantity + ' ' + itemName + '(s) added to cart.');
    }

    function orderNow(itemName) {
        alert('Ordering ' + itemName);
    }
</script>

=======
>>>>>>> branch 'master' of https://github.com/swastiswagat/Advance-Java-Food-Ordering-Website.git
</body>
</html>