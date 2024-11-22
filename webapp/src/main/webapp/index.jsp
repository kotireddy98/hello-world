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
      justify-content: flex-end; /* Aligns links to the right */
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
    .container {
      padding: 20px;
    }
    .section {
      display: none; /* Hide all sections initially */
      padding: 20px;
      background-color: #f9f9f9;
    }
    .active {
      display: block; /* Show the active section */
    }
    h1, p {
      margin: 0 0 10px;
    }
    .home-image {
      max-width: 100%;
      height: auto;
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
    function showSection(sectionId) {
      // Hide all sections
      const sections = document.querySelectorAll('.section');
      sections.forEach(section => section.classList.remove('active'));

      // Show the selected section
      const selectedSection = document.getElementById(sectionId);
      selectedSection.classList.add('active');
    }
  </script>
</head>
<body onload="showSection('login')"> <!-- Default section is Login -->

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
    <form action="login_action.php">
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
    <h1>Welcome to Our Restaurant!</h1>
    <p>
      A restaurant is a retail establishment that serves prepared food to customers. 
      Service is generally for eating on premises, though the term has been used to include 
      take-out establishments and food delivery services. The term covers many types of venues 
      and a diversity of styles of cuisine and service.
    </p>
    <img src="image.png" alt="Delicious food" class="home-image">
  </div>

  <!-- Order Section -->
  <div class="section" id="order">
    <h1>Order Online</h1>
    <p>Place your orders online and enjoy timely delivery.</p>
  </div>

  <!-- Services Section -->
  <div class="section" id="services">
    <h1>Our Services</h1>
    <p>We provide dine-in, take-away, and online delivery services with top-notch quality and hygiene.</p>
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
