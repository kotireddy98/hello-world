<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Restaurant Website</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    .navbar {
      overflow: hidden;
      background-color: #333;
      padding: 10px 0;
      display: flex;
      justify-content: flex-end;
    }
    .navbar a {
      display: block;
      color: white;
      text-align: center;
      padding: 14px 20px;
      text-decoration: none;
    }
    .navbar a:hover {
      background-color: #ddd;
      color: black;
    }
    .section {
      display: none;
      padding: 20px;
      background-color: #f9f9f9;
    }
    .active {
      display: block;
    }
    h1, p {
      margin: 0 0 10px;
    }
    .home-content {
      display: flex;
      align-items: flex-start;
    }
    .home-text {
      flex: 1;
      padding-right: 20px;
    }
    .home-text p {
      margin-bottom: 15px;
      line-height: 1.6;
    }
    .home-image {
      flex: 1;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    <style>
  .order-section {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    gap: 20px;
  }

  .order-item {
    display: flex;
    align-items: flex-start;
    width: 100%;
    border-bottom: 1px solid #ddd;
    padding-bottom: 20px;
  }

  .order-image {
    width: 200px; /* Adjust this to change the image size */
    height: auto;
    object-fit: cover;
    margin-right: 20px; /* Spacing between image and quantity */
  }

  .order-details {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
  }

  .order-details h2 {
    margin-bottom: 10px;
    font-size: 18px;
  }

  .order-item input {
    width: 80px;
    padding: 5px;
    text-align: center;
    margin-top: 10px;
  }

  button {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
    font-size: 16px;
  }

  button:hover {
    background-color: #45a049;
  }
</style>

    .services-image {
      max-width: 100%;
      height: auto;
      display: block;
      margin: 20px auto;
    }
    form input, form button {
      width: 100%;
      padding: 10px;
      margin: 5px 0;
      box-sizing: border-box;
    }
    .registerbtn {
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
    }
    .registerbtn:hover {
      background-color: #45a049;
    }
  </style>
  <script>
    const STATIC_PASSWORD = "password123";

    function showSection(sectionId) {
      const sections = document.querySelectorAll('.section');
      sections.forEach(section => section.classList.remove('active'));
      document.getElementById(sectionId).classList.add('active');
    }

    function validateLogin(event) {
      event.preventDefault();
      const password = document.getElementById('password').value;

      if (password === STATIC_PASSWORD) {
        showSection('home');
      } else {
        alert('Invalid Password!');
      }
    }
  </script>
</head>
<body onload="showSection('login')">

  <!-- Navbar -->
  <div class="navbar">
    <a href="javascript:void(0)" onclick="showSection('login')">Login</a>
    <a href="javascript:void(0)" onclick="showSection('home')">Home</a>
    <a href="javascript:void(0)" onclick="showSection('order')">Order</a>
    <a href="javascript:void(0)" onclick="showSection('services')">Services</a>
    <a href="javascript:void(0)" onclick="showSection('contact')">Contact</a>
  </div>

  <!-- Login Section -->
  <div class="section" id="login">
    <h1>Login</h1>
    <form onsubmit="validateLogin(event)">
      <label for="username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" id="username" required>
      <br>
      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" id="password" required>
      <br>
      <button type="submit" class="registerbtn">Login</button>
    </form>
  </div>

  <!-- Home Section -->
  <div class="section" id="home">
    <div class="home-content">
      <div class="home-text">
        <h1>Welcome to Our Restaurant!</h1>
        <p>A restaurant is a retail establishment that serves prepared food to customers.<br>
           Service is generally for eating on premises, though the term has been used to include<br>
           take-out establishments and food delivery services.<br> The term covers many types
           of venues and a diversity of styles of cuisine and service.</p>
      </div>
      <img src="https://i.ibb.co/FWYHYRk/Desktop-Free-Food-Images.jpg" alt="Delicious food" class="home-image">
    </div>
  </div>

  <!-- Order Section -->
 <!-- Order Section -->
<div class="section" id="order">
  <h1>Order Online</h1>
  <div class="order-section">
    
    <!-- Order Item 1 -->
    <div class="order-item">
      <img src="https://i.ibb.co/L9SVwdb/food-order-form-1.jpg" alt="Dish" class="order-image">
      <div class="order-details">
        <h2>Food Item Name</h2>
        <label for="quantity1">Quantity:</label>
        <input type="number" id="quantity1" name="quantity1" min="1" value="1">
      </div>
    </div>

    <!-- Order Item 2 -->
    <div class="order-item">
      <img src="https://i.ibb.co/Q9pR0XG/Restaurant-Food-Order-Form-Free-Template.jpg" alt="Dish" class="order-image">
      <div class="order-details">
        <h2>Food Item Name</h2>
        <label for="quantity2">Quantity:</label>
        <input type="number" id="quantity2" name="quantity2" min="1" value="1">
      </div>
    </div>

    <!-- Place Order Button -->
    <button type="button" onclick="alert('Order placed successfully!')">Place Order</button>
  </div>
</div>


  <!-- Services Section -->
  <div class="section" id="services">
    <h1>Our Services</h1>
    <p>We provide dine-in, take-away, and online delivery services with top-notch quality and hygiene.</p>
    <img src="https://i.ibb.co/Q9pR0XG/Restaurant-Food-Order-Form-Free-Template.jpg" alt="Services" class="services-image">
  </div>

  <!-- Contact Section -->
  <div class="section" id="contact">
    <h1>Contact Us</h1>
    <p>
      Have questions? Reach out to us at 
      <a href="mailto:support@restaurant.com">support@restaurant.com</a> 
      or call us at +123-456-7890.
    </p>
  </div>

</body>
</html>
