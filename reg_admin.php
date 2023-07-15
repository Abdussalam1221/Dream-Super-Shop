<?php
include 'config.php';
if(isset($_POST['submit'])){
   $fname = mysqli_real_escape_string($conn, $_POST['fname']);
   $lname = mysqli_real_escape_string($conn, $_POST['lname']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));
   $cpass = mysqli_real_escape_string($conn, md5($_POST['cpassword']));
   $user_type = $_POST["admin"];

   $select_users = mysqli_query($conn, "SELECT * FROM `users` WHERE email = '$email' AND password = '$pass'") or die('query failed');

   if(mysqli_num_rows($select_users) > 0){
      $message[] = 'user already exist!';
   }else{
      if($pass != $cpass){
         $message[] = 'confirm password not matched!';
      }else{
         mysqli_query($conn, "INSERT INTO `users`(fname, lname, email, password) VALUES('$fname', '$lname', '$email', '$cpass')") or die('query failed');
         $message[] = 'registered successfully!';
         header('location:login.php');
      }
   }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register</title>
   <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>   
<div class="form-container">
   <form action="" method="post">
      <h3>Sign Up</h3>
      <h4>Please fill in this form to create an account!</h4>
      <input type="text" name="fname" placeholder="First name" required class="box1" required>
      <input type="text" name="lname" placeholder="Last name" required class="box1" required>
      <input type="email" name="email" placeholder="Email" required class="box" required>
      <input type="password" name="password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required class="box3" required>
      <i class="far fa-eye" id="togglePassword" style="margin-left: -40px; cursor: pointer;"></i>
      <br>
      <input type="password" name="cpassword" placeholder="Confirm Password" required class="box4">
      <i class="far fa-eye" id="togglePassword2" style="margin-left: -40px; cursor: pointer;"></i>

      <input type="checkbox" id="Privacy_Policy" name="Privacy_Policy" value="Privacy_Policy"  onclick="enable()">
      <label for="Privacy_Policy"> I accept the <span>Terms of Use</span>  & <span> Privacy Policy.</span></label><br><br>

      <input disabled="true" type="submit" name="submit" value="Sign Up" id="btn">
      <p>Already have an account? <a href="login.php"><span>Login here.</span></a></p>
   </form>

</div>

<div class="right"></div>


<script src="script.js"></script>
</body>
</html>