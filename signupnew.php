<?php include('server.php') ?>
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
    <title>Police Sign Up</title>
  </head>
  <body>

    <div class="navigation">
      <div class="nav-center container d-flex">
        <a href="index.html" class="logo"><h1>Police Sign Up</h1></a>

        
        <ul class="nav-list d-flex">
          <li class="icons d-flex">
            <a href="login.html" class="icon">
              <i class="bx bx-user"></i>
            </a>

          </li>
        </ul>

        <div class="icons d-flex">
          <a href="loginnew.php" class="icon">
            <i class="bx bx-user"></i>
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
      <form method="post" action="signupnew.php">
          <h1>Account Creation</h1>
          
          <form method="post" action="signupnew.php">

          <?php include('errors.php'); ?>

          <label for="email"><b>Username</b></label>
          <input type="text" placeholder="Enter Username" name="username" value="<?php echo $username; ?>"> 

          <label for="email"><b>Name</b></label>
          <input type="text" placeholder="Enter Name" name="name" required />


          <label for="psw"><b>Password</b></label>
          <input
            type="password"
            placeholder="Enter Password"
            name="password_1"
            required
          />

          <label for="psw-repeat"><b>Confirm Password</b></label>
          <input
            type="password"
            placeholder="Confirm Password"
            name="password_2"
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
            <button  type="submit" class="signupbtn" name="reg_user">Create</button>
          </div>
        </form>
      </div>
    </div>

    
    <!-- Custom Script -->
    <script src="./js/index.js"></script>
  </body>
</html>
