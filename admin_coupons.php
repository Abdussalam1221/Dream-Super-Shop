<?php

include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
   header('location:login.php');
};

if (isset($_POST['add_coupon'])) {

   $coupon_id = $_POST['coupon_id'];
   $coupon_name = $_POST['coupon_name'];
   $coupon_amount = $_POST['coupon_amount'];
   $sdate = $_POST['sdate'];
   $edate = $_POST['edate'];

   $select_coupon_name = mysqli_query($conn, "SELECT coupon_name FROM `coupons` WHERE coupon_name = '$coupon_name'") or die('query failed');

   if (mysqli_num_rows($select_coupon_name) > 0) {
      $message[] = 'coupon name already added';
   } else {
      $add_coupon_query = mysqli_query($conn, "INSERT INTO `coupons`(coupon_id, coupon_name, coupon_amount, sdate, edate) VALUES('$coupon_id', '$coupon_name', '$coupon_amount', '$sdate', '$edate')") or die('query failed');
   }
}

if (isset($_GET['delete'])) {
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `coupons` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_coupons.php');
}

if (isset($_POST['update_product'])) {

   $update_c_id = $_POST['c_id'];
   $update_coupon_id = $_POST['update_coupon_id'];
   $update_coupon_name = $_POST['update_coupon_name'];
   $update_coupon_amount = $_POST['update_coupon_amount'];
   $update_sdate = $_POST['update_sdate'];
   $update_edate = $_POST['update_edate'];

   mysqli_query($conn, "UPDATE `coupons` SET coupon_id = '$update_coupon_id', coupon_name = '$update_coupon_name' , coupon_amount = '$update_coupon_amount', sdate = '$update_sdate', edate = '$update_edate' WHERE id = '$update_c_id'") or die('query failed');
   header('location:admin_coupons.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>shop coupons</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel="stylesheet" href="css/admin_style.css">

</head>

<body>

   <?php include 'admin_header.php'; ?>


   <section class="add-products">

      <h1 class="title">shop coupons</h1>

      <form action="" method="post" enctype="multipart/form-data" id="price-form">
         <h3>add coupon</h3>


         <input type="text" name="coupon_id" class="box" placeholder="Enter coupon ID" required>
         <input type="text" name="coupon_name" class="box" placeholder="Enter coupon name" required>         
         <input type="number" name="coupon_amount" step="0.01" class="box" placeholder="Enter coupon percentage" required>
         <input type="date" name="sdate" class="box" placeholder="Enter starting date" required>
         <input type="date" name="edate" class="box" placeholder="Enter expire date" required>
         <input type="submit" value="ADD COUPON" name="add_coupon" class="btn" style="cursor: pointer;">
      </form>

   </section>




   <section class="show-products">

      <div class="box-container">

         <?php
         $select_coupons = mysqli_query($conn, "SELECT * FROM `coupons`") or die('query failed');
         if (mysqli_num_rows($select_coupons) > 0) {
            while ($fetch_coupons = mysqli_fetch_assoc($select_coupons)) {
         ?>
               <div class="box">
                  
                  <div class="name"><?php echo $fetch_coupons['coupon_id']; ?></div>
                  <div class="name"><?php echo $fetch_coupons['coupon_name']; ?></div>
                  <div class="name"><?php echo $fetch_coupons['coupon_amount']; ?></div>
                  <div class="name"><?php echo $fetch_coupons['sdate']; ?></div>
                  <div class="name"><?php echo $fetch_coupons['edate']; ?></div>

                  <a href="admin_coupons.php?update=<?php echo $fetch_coupons['id']; ?>" class="option-btn">Update</a>
                  <a href="admin_coupons.php?delete=<?php echo $fetch_coupons['id']; ?>" class="delete-btn" onclick="return confirm('delete this coupon?');">Delete</a>
               </div>
         <?php
            }
         } else {
            echo '<p class="empty">No coupons added yet!</p>';
         }
         ?>
      </div>

   </section>


   <section class="edit-product-form">

   <?php
   if (isset($_GET['update'])) {
      $update_id = $_GET['update'];
      $update_query = mysqli_query($conn, "SELECT * FROM `coupons` WHERE id = '$update_id'") or die('query failed');
      if (mysqli_num_rows($update_query) > 0) {
         while ($fetch_update = mysqli_fetch_assoc($update_query)) {
   ?>
            <form action="" method="post" enctype="multipart/form-data">
               <input type="hidden" name="c_id" value="<?php echo $fetch_update['id']; ?>">
               <input type="hidden" name="coupon_id" value="<?php echo $fetch_update['coupon_id']; ?>">
               <input type="hidden" name="coupon_name" value="<?php echo $fetch_update['coupon_name']; ?>">
               <input type="hidden" name="coupon_amount" value="<?php echo $fetch_update['coupon_amount']; ?>">
               <input type="hidden" name="sdate" value="<?php echo $fetch_update['sdate']; ?>">
               <input type="hidden" name="edate" value="<?php echo $fetch_update['edate']; ?>">

               <input type="text" name="update_coupon_id" class="box" value="<?php echo $fetch_update['coupon_id']; ?>" required>
               <input type="text" name="update_coupon_name" class="box" value="<?php echo $fetch_update['coupon_name']; ?>" required>         
               <input type="number" name="update_coupon_amount" step="0.01" class="box" value="<?php echo $fetch_update['coupon_amount']; ?>" required>
               <input type="date" name="update_sdate" class="box" value="<?php echo $fetch_update['sdate']; ?>" required>
               <input type="date" name="update_edate" class="box" value="<?php echo $fetch_update['edate']; ?>" required>


               <input type="submit" value="update" name="update_product" class="btn">
               <input type="reset" value="cancel" id="update_coupn" class="option-btn">
            </form>
   <?php
         }
      }
   } else {
      echo '<script>document.querySelector(".edit-product-form").style.display = "none";</script>';
   }
   ?>

</section>
   <script src="js/admin_script.js"></script>

</body>

</html>