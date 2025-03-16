<?php include('server.php') 
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
    <!-- Boxicons -->
    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />
    <!-- Glide js -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.css">
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="./styles.css" />
    <title>Police Login</title>
  </head>
  <body>
   
  <?php
         if(!isset($_SESSION['username'])){
         echo "
         <li class='nav-item' >
        <a  class='nav-link' >Welcome Guest</a>
        </li>";
            }
             else{
            echo
           "<li class='nav-item' >
              <a class='nav-link' href='#'> Welcome ".$_SESSION['username']."</a>
             </li>";
                 }
                 ?>
                 <?php
if(!isset($_SESSION['username'])){
echo "
<li class='nav-item' >
<a class= 'nav-link' href='loginnew.php'>Login</a>
</li>";
}else{
echo"<li class='nav-item' >
<a class= 'nav-link' href='logout.php'>Logout</a>
</li>";
}
?>

      </div>

      <div class="container">
      <div class="login-form">
      <h1>Add Challan</h1>
      <form method="post" action="" enctype="multipart/form-data">

      
            <label for="image1" class="form-label">Vehicle Image</label>
            <input type="file" name="image1"
            id="image1" class="form-control"
            required="required"><br>



            <label for="remark" class="form-label">Remark</label>
            <input type="text" name="remark"
            id="remark" class="form-control"
            placeholder="Enter Remark" autocomplete="off"
            required="required"><br>

            <div class="buttons">
            <button type="button" class="cancelbtn">Reset</button>
            <button type="submit" class="signupbtn" name="insert_product">Upload</button><br>
            <br>
          </div>
            
</html>
