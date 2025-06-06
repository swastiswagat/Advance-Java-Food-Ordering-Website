# Food Ordering Website

### Advanced Java Project (Group Project)

This project is a **Food Ordering Website** developed as part of an Advanced Java project using **Java Servlets** and **JSP**. The website allows users to browse a menu, add items to their cart, and proceed to checkout. This group project focuses on creating an interactive and user-friendly experience with secure data handling and efficient web services.

## Features:
- **User Authentication**: Secure login and registration for users.
- **Menu Display**: Dynamic menu display with item details, including name, description, and price.
- **Shopping Cart**: Users can add, remove, and update items in the cart. The cart displays the total price based on item quantity and individual prices.
- **Order Checkout**: Option to review the order and proceed to checkout.
- **Admin Panel**: Manage menu items, view orders, and handle customer inquiries (if implemented).

## Tools and Technologies:
- **Backend**: Java Servlets, JSP
- **Database**: MySQL for storing user information, menu items, and order details
- **Frontend**: HTML, CSS, JavaScript for user interface
- **IDE**: Eclipse
- **Version Control**: Git

## Setup and Installation:
1. Clone the repository to your local machine:
2. Import the project into **Eclipse** as a Maven project.
3. Configure the MySQL database:
- Create a database named `food_ordering`.
- Import the provided SQL file to set up tables (`users`, `menu`, `orders`, etc.).
- Update the database credentials in the `db.properties` file.
4. Build and deploy the project on a local server (e.g., **Apache Tomcat**).
5. Run the project by accessing `http://localhost:8080/food-ordering`.

## Usage:
1. **User Registration**: Sign up for a new account or log in if you already have one.
2. **Browsing Menu**: View available items on the menu with descriptions and prices.
3. **Add to Cart**: Select items to add to the cart. Adjust item quantities in the cart as needed.
4. **Checkout**: Review your order and proceed to checkout to complete the purchase.

## Project Structure:
- **JSP Pages**: Includes `index.jsp`, `menu.jsp`, `cart.jsp`, `checkout.jsp`, `login.jsp`, and `register.jsp`.
- **Servlets**: Handles user authentication, menu management, and order processing.
- **Database Configuration**: Connection handled via JDBC for secure database interactions.

## Team Members and LinkedIn Profiles:
- [Group Member 1 - https://www.linkedin.com/in/swasti-swagat-492018270/]
- [Group Member 2 - LinkedIn](<LinkedIn-link-member2>)
- [Group Member 3 - LinkedIn](<LinkedIn-link-member3>)

## License:

