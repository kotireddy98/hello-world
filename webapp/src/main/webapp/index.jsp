<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Restaurant Registration</title>
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
    }
    .navbar a {
      float: left;
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
      padding: 20px;
      background-color: #f9f9f9;
    }
    h1, p {
      margin: 0 0 10px;
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
</head>
<body>

  <!-- Navbar -->
  <div class="navbar">
    <a href="#home">Home</a>
    <a href="#order">Order</a>
    <a href="#contact">Contact</a>
    <a href="#register">Register</a>
  </div>

  <!-- Home Section -->
  <div class="section" id="home">
    <h1>Welcome to Our Restaurant!</h1>
    <p>Explore our delicious menu and enjoy your dining experience with us.</p>
  </div>

  <!-- Order Section -->
  <div class="section" id="order">
    <h1>Order Online</h1>
    <p>Place your orders online and enjoy timely delivery.</p>
  </div>

  <!-- Contact Section -->
  <div class="section" id="contact">
    <h1>Contact Us</h1>
    <p>Have questions? Reach out to us at support@restaurant.com or call us at +123-456-7890.</p>
  </div>

  <!-- Registration Form Section -->
  <div class="section" id="register">
    <form action="action_page.php">
      <h1>New User Registration</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="Name"><b>Enter Name of the Customer</b></label>
      <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>
      <br>
      <label for="mobile"><b>Enter Customer Mobile Number</b></label>
      <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>
      <br>
      <label for="email"><b>Enter Customer Email Address</b></label>
      <input type="text" placeholder="Enter Email" name="email" id="email" required>
      <br>
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
      <br>
      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
      <hr>
      <br>
      <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
      <button type="submit" class="registerbtn">Register</button>
    </form>
    <div class="container signin">
      <p>Already have an account? <a href="#">Sign in</a>.</p>
    </div>
  </div>

</body>
</html>
