<?php
include 'config.php';

$message = ""; // Variable to store error or success messages

if (isset($_POST['submit'])) {
   $fname = mysqli_real_escape_string($conn, $_POST['fname']);
   $lname = mysqli_real_escape_string($conn, $_POST['lname']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));
   $cpass = mysqli_real_escape_string($conn, md5($_POST['cpassword']));
   $user_type = $_POST["user"];

   $select_users = mysqli_query($conn, "SELECT * FROM `users` WHERE email = '$email'") or die('Query failed');

   if (mysqli_num_rows($select_users) > 0) {
      $message = 'User already exists!';
   } else {
      if ($pass != $cpass) {
         $message = 'Confirm password does not match!';
      } else {
         mysqli_query($conn, "INSERT INTO `users`(fname, lname, email, password) VALUES('$fname', '$lname', '$email', '$cpass')") or die('Query failed');
         $message = 'Registered successfully!';
         header('Location: login.php');
         exit();
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
   <title>Register</title>
   <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>   
   <div class="form-container">
      <form action="" method="post" onsubmit="return validateForm()">
         <h3>Sign Up</h3>
         <h4>Please fill in this form to create an account!</h4>
         <input type="text" name="fname" placeholder="First name" required class="box1">
         <input type="text" name="lname" placeholder="Last name" required class="box1">
         <input type="email" name="email" id="email" placeholder="Email" required class="box">
         <input type="password" name="password" id="password" placeholder="Password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]).{8,}$" required class="box3">
         <i class="far fa-eye" id="togglePassword" style="margin-left: -40px; cursor: pointer;"></i>
         <br>
         <input type="password" name="cpassword" placeholder="Confirm Password" required class="box4">
         <i class="far fa-eye" id="togglePassword2" style="margin-left: -40px; cursor: pointer;"></i>

         <input type="checkbox" id="Privacy_Policy" name="Privacy_Policy" value="Privacy_Policy" onclick="enable()">
         <label for="Privacy_Policy"> I accept the <span>Terms of Use</span>  & <span> Privacy Policy.</span></label><br><br>

         <input disabled="true" type="submit" name="submit" value="Sign Up" id="btn">
         <p>Already have an account? <a href="login.php"><span>Login here.</span></a></p>
      </form>
   </div>

   <div class="right"></div>
<script src="script.js"></script>
   <script>
      function validateForm() {
         var emailInput = document.getElementById('email');
         var email = emailInput.value.trim();

         // Check if it contains any special characters
         var specialChars = /[!#$%^&*()_+\-=\[\]{};':"\\|,<>\/?]+/;
         if (specialChars.test(email)) {
            displayErrorMessage('Email cannot contain special characters');
            emailInput.focus();
            return false;
         }

         // Check if it contains valid TLD
         var validTLDs = ['.com', '.in', '.org']; // Array of valid TLDs
         var isValidTLD = false;

         for (var i = 0; i < validTLDs.length; i++) {
            if (email.endsWith(validTLDs[i])) {
               isValidTLD = true;
               break;
            }
         }

         if (!isValidTLD) {
            displayErrorMessage('Email must have a valid TLD (e.g., .com, .in, .org)');
            emailInput.focus();
            return false;
         }

         // Form is valid, hide any previous error message
         hideErrorMessage();
         return true;
      }

      function displayErrorMessage(message) {
         var errorContainer = document.createElement('div');
         errorContainer.className = 'error-message';
         errorContainer.textContent = message;

         var formContainer = document.querySelector('.form-container');
         formContainer.insertBefore(errorContainer, formContainer.firstChild);
      }

      function hideErrorMessage() {
         var errorContainer = document.querySelector('.error-message');
         if (errorContainer) {
            errorContainer.remove();
         }
      }
   </script>
</body>
</html>
