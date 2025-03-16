
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Box icons -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"
    />
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="./styles.css" />
    <title>Login</title>
  </head>
  <body>
    
    <div class="navigation">
      <div class="nav-center container d-flex">
        <a href="index.html" class="logo"><h1>ShopKart</h1></a>

        <ul class="nav-list d-flex">
          <li class="nav-item">
            <a href="index.php" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="product.html" class="nav-link">Shop</a>
          </li>
          
          <li class="icons d-flex">
            <a href="login.html" class="icon">
              <i class="bx bx-user"></i>
            </a>
            <div class="icon">
              <i class="bx bx-search"></i>
            </div>
            

        <div class="icons d-flex">
          <a href="loginnew.php" class="icon">
            <i class="bx bx-user"></i>
          </a>
          <div class="icon">
            <i class="bx bx-search"></i>
          </div>
          <div class="icon">
            <i class="bx bx-heart"></i>
            <span class="d-flex">0</span>
          </div>
          <a href="cart.html" class="icon">
            <i class="bx bx-cart"></i>
            <span class="d-flex">0</span>
          </a>
        </div>

        <div class="hamburger">
          <i class="bx bx-menu-alt-left"></i>
        </div>
      </div>
    </div>
    <!-- Login -->
    <div class="container">
      <div class="login-form">
      <form method="post" action="loginnew.php">
      <h1>Police Login</h1>
          <p>
            Already have an account? Login in or
            <a href="signupnew.php">Sign Up</a>
          </p>
          <?php include('errors.php'); ?>
          <label for="email">Username</label>
          <input type="text" placeholder="Enter Username" name="username" required />

          <label for="psw">Password</label>
          <input
            type="password"
            placeholder="Enter Password"
            name="password"
            required
          />

          

          <label>
            <input
              type="checkbox"
              checked="checked"
              name="remember"
              style="margin-bottom: 15px"
            />
            Remember me
          </label>

          <p>
            By creating an account you agree to our
            <a href="#">Terms & Privacy</a>.
          </p>

          <div class="buttons">
            <button type="button" class="cancelbtn">Cancel</button>
            <button href="police_interface.php" type="submit" class="signupbtn" name="login_user">Login</button>
          </div>
        </form>
      </div>
    </div>

   

    <!-- Custom Script -->
    <script src="./js/index.js"></script>
  </body>
</html>
