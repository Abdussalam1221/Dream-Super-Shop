<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if (!isset($user_id)) {
   header('location:login.php');
}

if (isset($_POST['send'])) {

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $number = $_POST['number'];
   $order_id = $_POST['order_id'];
   $msg = mysqli_real_escape_string($conn, $_POST['message']);

   $select_message = mysqli_query($conn, "SELECT * FROM `return_table` WHERE name = '$name' AND email = '$email' AND number = '$number'  AND order_id = '$order_id' AND msg = '$msg'") or die('query failed');

   if (mysqli_num_rows($select_message) > 0) {
      $message[] = 'Return request is sent.';
   } else {
      mysqli_query($conn, "INSERT INTO `return_table`(user_id,name, email, number,order_id, msg) VALUES('$user_id', '$name', '$email', '$number','$order_id', '$msg')") or die('query failed');
      $message[] = 'Return request is placed successfully!';
   }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>contact</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="c_style.css">
   <link rel="stylesheet" href="return.css">

</head>

<body>

   <?php include 'header.php'; ?>

   <div class="heading">
      <h3>Return product</h3>
      <p> <a href="home.php">home</a> / Return </p>
   </div>

   <section class="contact" id="return">

      <form action="" method="post">
         <h3>Please fill-up the form</h3>
         <input type="text" name="name" required placeholder="Please enter your name" class="box">
         <input type="email" name="email" required placeholder="please enter your email" class="box">
         <input type="number" name="number" required placeholder="Please enter your contact number" class="box">
         <input type="number" name="order_id" required placeholder="Please enter your order ID" class="box">

         <textarea name="message" class="box" placeholder="Why do you want to return? Please describe." cols="40" rows="15"></textarea>
         <input type="submit" value="Return" name="send" class="btn">
      </form>

   </section>








   <?php include 'footer.php'; ?>

   <!-- custom js file link  -->
   <script src="js/script.js"></script>

</body>

</html>