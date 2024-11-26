<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - Restaurant Website</title>
  <link rel="stylesheet" href="styles.css">
  <script>
    const STATIC_USERNAME = "user";
    const STATIC_PASSWORD = "password123";

    function validateLogin(event) {
      event.preventDefault();
      const username = document.getElementById('username').value;
      const password = document.getElementById('password').value;

      if (username === STATIC_USERNAME && password === STATIC_PASSWORD) {
        sessionStorage.setItem("isLoggedIn", "true");
        window.location.href = "home.html";
      } else {
        alert("Invalid username or password!");
      }
    }
  </script>
</head>
<body>
  <div class="section">
    <h1>Login</h1>
    <form onsubmit="validateLogin(event)">
      <label for="username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" id="username" required>
      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" id="password" required>
      <button type="submit" class="registerbtn">Login</button>
    </form>
  </div>
</body>
</html>
<nav class="navbar" id="navbar">
  <a href="home.html">Home</a>
  <a href="order.html">Order</a>
  <a href="services.html">Services</a>
  <a href="contact.html">Contact</a>
  <a href="login.html" onclick="logout()">Logout</a>
</nav>
<script>
  function checkLogin() {
    if (sessionStorage.getItem("isLoggedIn") !== "true") {
      window.location.href = "login.html";
    }
  }

  function logout() {
    sessionStorage.removeItem("isLoggedIn");
    alert("Logged out successfully!");
    window.location.href = "login.html";
  }

  checkLogin();
</script>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home - Restaurant Website</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div>
    <!-- Include the Navbar -->
    <div id="navbar"></div>
    <script>
      fetch("navbar.html").then(response => response.text()).then(data => {
        document.getElementById("navbar").innerHTML = data;
      });
    </script>
    <div class="section">
      <div class="home-content">
        <div class="home-text">
          <h1>Welcome to Our Restaurant!</h1>
          <p>Your description text goes here.</p>
        </div>
        <img src="https://i.ibb.co/FWYHYRk/Desktop-Free-Food-Images.jpg" alt="Delicious food" class="home-image">
      </div>
    </div>
  </div>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Order - Restaurant Website</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div>
    <!-- Include the Navbar -->
    <div id="navbar"></div>
    <script>
      fetch("navbar.html").then(response => response.text()).then(data => {
        document.getElementById("navbar").innerHTML = data;
      });
    </script>
    <div class="section">
      <h1>Order Online</h1>
      <div class="order-section">
        <!-- Add order items here -->
        <div class="order-item">
          <img src="https://i.ibb.co/L9SVwdb/food-order-form-1.jpg" alt="Dish" class="order-image">
          <div class="order-details">
            <h2>Food Item 1</h2>
            <input type="number" min="1" value="1">
          </div>
        </div>
        <button type="button" onclick="alert('Order placed successfully!')">Place Order</button>
      </div>
    </div>
  </div>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Services - Restaurant Website</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div>
    <!-- Include the Navbar -->
    <div id="navbar"></div>
    <script>
      fetch("navbar.html").then(response => response.text()).then(data => {
        document.getElementById("navbar").innerHTML = data;
      });
    </script>
    <div class="section">
      <h1>Our Services</h1>
      <p>Details about your services go here.</p>
      <img src="https://i.ibb.co/Q9pR0XG/Restaurant-Food-Order-Form-Free-Template.jpg" alt="Services">
    </div>
  </div>
</body>
</html>
