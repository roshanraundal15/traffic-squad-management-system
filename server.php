<?php
session_start();

// initializing variables
$username = "";
$email    = "";
$errors = array(); 

// connect to the database
$conn = mysqli_connect('localhost', 'root', '', 'traffic_offense_db');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  $username = mysqli_real_escape_string($conn, $_POST['username']);
  $name = mysqli_real_escape_string($conn, $_POST['name']);
  $password_1 = mysqli_real_escape_string($conn, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($conn, $_POST['password_2']);
  $uppercase = preg_match('@[A-Z]@',$password_1);
  $lowercase = preg_match('@[a-z]@',$password_1);
  $number = preg_match('@[0-9]@',$password_1);
  $special_char = preg_match('@[^\w]@',$password_1);

  if (empty($username)) { array_push($errors, "Username is required"); }
  
  if (empty($password_1)) { array_push($errors, "Password is required"); } 
  if (strlen($password_1) < 8) { array_push($errors, "*Password should be at least 8 characters in length"); }
  if (!$uppercase) { array_push($errors, "*Password should contain one UPPERCASE letter"); }
  if (!$lowercase) { array_push($errors, "*Password should contain one lowercase letter"); }
  if (!$number) { array_push($errors, "*Password should contain one number"); }   
  if (!$special_char) { array_push($errors, "*Password should contain one special character"); }
  if ($password_1 != $password_2) { array_push($errors, "The two passwords do not match"); }

  $user_check_query = "SELECT * FROM police_users WHERE username='$username'";
  $result = mysqli_query($conn, $user_check_query);
  $user = mysqli_fetch_assoc($result); 

  if (count($errors) == 0) {
    $password = md5($password_1);

    $query = "INSERT INTO police_users (username, name, password) VALUES('$username', '$name', '$password')";
    mysqli_query($conn, $query);
    $_SESSION['username'] = $username;
    $_SESSION['success'] = "Credensials created";
    header('location: signupnew.php');
  }
}

// LOGIN USER
if (isset($_POST['login_user'])) {
  $username = mysqli_real_escape_string($conn, $_POST['username']);
  $password = mysqli_real_escape_string($conn, $_POST['password']);

  if (empty($username)) {
    array_push($errors, "Username is required");
  }
  if (empty($password)) {
    array_push($errors, "Password is required");
  }
  if (count($errors) == 0) {
    $password = md5($password); // Use the correct variable

    $query = "SELECT * FROM police_users WHERE username='$username' AND password='$password'";
    $results = mysqli_query($conn, $query);

    if (mysqli_num_rows($results) == 1) {
      $_SESSION['username'] = $username;
      $_SESSION['success'] = "Logged in successfully";
      header('location: index12.php');
    } else {
      array_push($errors, "Wrong username/password combination");
    }
  }
}

// INSERT PRODUCT/CHALLAN
if (isset($_POST['insert_product'])) {
  $remark = mysqli_real_escape_string($conn, $_POST['remark']);
  $image1 = $_FILES['image1']['name'];
  $temp_image1 = $_FILES['image1']['tmp_name'];

  // Create directory if not exists
  if (!file_exists('./product_images')) {
    mkdir('./product_images', 0777, true);
  }

  move_uploaded_file($temp_image1, "./product_images/$image1");

  $insert_product = "INSERT INTO challan(image1, remark) VALUES ('$image1', '$remark')";
  $result_query = mysqli_query($conn, $insert_product); 

  if ($result_query) {
      echo "<script>alert('Challan Added Successfully');</script>";
  } else {
      echo "<script>alert('Failed to Add the Challan');</script>";
  }
}




// ADMIN LOGIN USER
// if (isset($_POST['login_admin'])) {
//   $username_ad = mysqli_real_escape_string($conn, $_POST['username_ad']);
//   $password = mysqli_real_escape_string($conn, $_POST['password']);

//   if (empty($username_ad)) {
//   	array_push($errors, "Username is required");
//   }
//   if (empty($password)) {
//   	array_push($errors, "Password is required");
//   }
//   if (count($errors) == 0) {
//   	$password = md5($password);

//   	$query = "Select * from admin ";
//   	mysqli_query($conn, $query);
//   if()  
//   	$_SESSION['username_ad'] = $username_ad;
//   	$_SESSION['success'] = " ";
//   	header('location: adminportal.php');
//   }

  
// }
?>