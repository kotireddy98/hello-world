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
      <label for="username">Username</label>
      <input type="text" id="username" placeholder="Enter Username" required>
      <label for="password">Password</label>
      <input type="password" id="password" placeholder="Enter Password" required>
      <button type="submit">Login</button>
    </form>
  </div>
</body>
</html>
<nav class="navbar">
  <a href="home.html">Home</a>
  <a href="order.html">Order</a>
  <a href="services.html">Services</a>
  <a href="contact.html">Contact</a>
  <a href="login.html" onclick="logout()">Logout</a>
</nav>
<script>
  function logout() {
    sessionStorage.removeItem("isLoggedIn");
    alert("Logged out successfully!");
    window.location.href = "login.html";
  }
</script>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home - Restaurant Website</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body onload="checkLogin()">
  <div id="navbar"></div>
  <script>
    fetch("navbar.html").then(res => res.text()).then(data => {
      document.getElementById("navbar").innerHTML = data;
    });

    function checkLogin() {
      if (sessionStorage.getItem("isLoggedIn") !== "true") {
        window.location.href = "login.html";
      }
    }
  </script>
  <div class="section">
    <h1>Welcome to Our Restaurant!</h1>
    <p>Experience the best cuisine in town.</p>
    <img src="https://i.ibb.co/FWYHYRk/Desktop-Free-Food-Images.jpg" alt="Delicious Food">
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
<body onload="checkLogin()">
  <div id="navbar"></div>
  <script>
    fetch("navbar.html").then(res => res.text()).then(data => {
      document.getElementById("navbar").innerHTML = data;
    });
  </script>
  <div class="section">
    <h1>Order Online</h1>
    <div class="order-item">
      <img src="https://i.ibb.co/L9SVwdb/food-order-form-1.jpg" alt="Dish">
      <h2>Dish Name</h2>
      <input type="number" value="1" min="1">
      <button onclick="alert('Order placed!')">Order</button>
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
<body onload="checkLogin()">
  <div id="navbar"></div>
  <script>
    fetch("navbar.html").then(res => res.text()).then(data => {
      document.getElementById("navbar").innerHTML = data;
    });
  </script>
  <div class="section">
    <h1>Our Services</h1>
    <p>We provide catering, home delivery, and party arrangements.</p>
    <img src="https://i.ibb.co/Q9pR0XG/Restaurant-Food-Order-Form-Free-Template.jpg" alt="Services">
  </div>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact - Restaurant Website</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body onload="checkLogin()">
  <div id="navbar"></div>
  <script>
    fetch("navbar.html").then(res => res.text()).then(data => {
      document.getElementById("navbar").innerHTML = data;
    });
  </script>
  <div class="section">
    <h1>Contact Us</h1>
    <p>Phone: 123-456-7890 | Email: contact@restaurant.com</p>
    <img src="https://i.ibb.co/CvFD9VQ/contact-us-image.jpg" alt="Contact">
  </div>
</body>
</html>
