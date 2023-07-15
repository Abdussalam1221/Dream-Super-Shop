<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

if(isset($_POST['add_to_cart'])){

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];
   $product_type = $_POST['product_type'];
   
   $product_name = mysqli_real_escape_string($conn, $_POST['product_name']);
   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_cart_numbers) > 0){
      $message[] = 'already added to cart!';
   }else{
      $stmt = mysqli_prepare($conn, "INSERT INTO `cart` (user_id, name, price, quantity, image, type) VALUES (?, ?, ?, ?, ?, ?)");
      mysqli_stmt_bind_param($stmt, "isdiis", $user_id, $product_name, $product_price, $product_quantity, $product_image, $product_type);
      mysqli_stmt_execute($stmt);
      $message[] = 'product added to cart!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>shop</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="styles.css">

   <style>
   .print-area {
      width: 100%;
      height: 50px;
      padding: 5px;
      font-size: 16px;
   }



   .price {
    position: relative;
   }
   
   
   
   .original-price {
      text-decoration: line-through;
      margin-right: 5px;
      color: black;
      font-size: 15px;
   }
   </style>


</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>our shop</h3>
</div>
<section class="sliders">

<div class="side-nav">
         <ul>
            <li><a href="great_savings.php"><img src="uploaded_img\save-money.png" alt="">
                  <p>Great Savings</p>
               </a></li>
            <li><a href="unilever.php"><img src="uploaded_img\unilever.png" alt="">
                  <p>Deals on Unilever</p>
               </a></li>
            <li><a href="b1g1.php"><img src="uploaded_img\buy-one-get-one-free.png" alt="">
                  <p>Buy 1 Get 1</p>
               </a></li>
            <li><a href="fruits.php"><img src="uploaded_img\fruits.png" alt="">
                  <p>Fruits</p>
               </a></li>
            <li><a href="vegetables.php"><img src="uploaded_img\vegetables.png" alt="">
                  <p>Vegetables</p>
               </a></li>
            <li><a href="meat.php"><img src="uploaded_img\meat.png" alt="">
                  <p>Meat</p>
               </a></li>
            <li><a href="fish.php"><img src="uploaded_img\fish.png" alt="">
                  <p>Fish</p>
               </a></li>
            <li><a href="#"><img src="uploaded_img\bake.png" alt="">
                  <p>Cooking Essentials</p>
               </a></li>
            <li><a href="#"><img src="uploaded_img\snack.png" alt="">
                  <p>Snacks & Instant Food</p>
               </a></li>
            <li><a href="#"><img src="uploaded_img\dairy-products.png" alt="">
                  <p>Dairy Products</p>
               </a></li>
            <li><a href="#"><img src="uploaded_img\personal-hygiene.png" alt="">
                  <p>Personal Care</p>
               </a></li>
            <li><a href="#"><img src="uploaded_img\veterinary.png" alt="">
                  <p>Pet Care</p>
               </a></li>
         </ul>
      </div>
        
   </section>

   <div class="heading">
      <h3>You may needs</h3>
   </div>

<section class="products">

   <div class="box-container">

      <?php
      
         # search last item purchased
         $query = "SELECT * FROM cart ORDER BY id DESC LIMIT 1";
         $result = mysqli_query($conn, $query);
         
         if (mysqli_num_rows($result) > 0) {
            $lastRow = mysqli_fetch_assoc($result);
            // Access the data in the last row
            $lastRowId = $lastRow['id'];
            $lastRowColumn = $lastRow['name']; # search last item purchased
            // ...
         } else {
            // Table is empty
         }

         
         $sql = "SELECT * FROM `basket_analysis`
            WHERE item1 = '$lastRowColumn'
               OR item2 = '$lastRowColumn'
               OR item3 = '$lastRowColumn'
               OR item4 = '$lastRowColumn'
               OR item5 = '$lastRowColumn'
               OR item6 = '$lastRowColumn'
               OR item7 = '$lastRowColumn'";

         $result = $conn->query($sql);

         if ($result->num_rows > 0) {
            // Fetch table rows and store them in an array
            $table = array();
            while ($row = $result->fetch_assoc()) {
               $table[] = array_values($row);
            }


            // Flatten the table into a single array
            $stringList = array_reduce($table, 'array_merge', array());

            // Count the occurrences of each string
            $stringCounts = array_count_values($stringList);

            // Find the string with the maximum count
            $maxString = '';
            $maxCount = 0;

            foreach ($stringCounts as $string => $count) {
               if ($count > $maxCount) {
                  $maxString = $string;
                  $maxCount = $count;
               }
            }

            #echo "The string '{$maxString}' occurs the most with {$maxCount} occurrences.";



            // Print all values of $table
            foreach ($table as $row) {
               foreach ($row as $value) {
                  #echo $value . " ";
               }
               #echo "<br>";
            }


            #echo "Rows that contain '{$searchString}': " . implode(", ", $foundRows);
         } else {
            echo "No results found.";
         }



// Print random values from the first 5 rows in $table
$randomValues = array();
$firstFiveRows = array_slice($table, 0, 5); // Extract first 5 rows
foreach ($firstFiveRows as $row) {
    $randomIndex = array_rand($row); // Randomly pick an index from the row
    $randomValue = $row[$randomIndex]; // Get the value at the random index
    $randomValues[] = $randomValue; // Store the random value
    #echo $randomValue . "<br>"; // Print the random value
}


for ($i = 0; $i < 4; $i++) {
   
   $select_products = mysqli_query($conn, "SELECT * FROM `products` WHERE `name`='$randomValues[$i]'") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
     <form action="" method="post" class="box">
      <img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="">
      <div class="print-area"><?php echo $fetch_products['name']; ?></div>

      <div class="price">$<?php echo $fetch_products['price']; ?>/-</div>
      <input type="number" min="1" name="product_quantity" value="1" class="qty">
      <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
      
      <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
      <input type="hidden" name="product_type" value="<?php echo $fetch_products['type']; ?>">
      <input type="submit" value="add to cart" name="add_to_cart" class="btn">
     </form>
      <?php
         }
      }else{
         
      }
   
}
?>

</div>

</section>



   <div class="heading">
      <h3> </h3>
   </div>
<section class="products">

   <div class="box-container">

      <?php  
         $select_products = mysqli_query($conn, "SELECT * FROM `products` WHERE `type`='great_savings'") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
     <form action="" method="post" class="box">
      <img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="">
      <div class="print-area"><?php echo $fetch_products['name']; ?></div>



         <div class="price">
         <span class="original-price">$<?php echo $fetch_products['price']; ?>/-</span>
         <span class="discounted-price">$<?php echo $fetch_products['price'] * 0.91; ?>/-</span>
         </div>




      <input type="number" min="1" name="product_quantity" value="1" class="qty">
      <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
      
      <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
      <input type="hidden" name="product_type" value="<?php echo $fetch_products['type']; ?>">
      <input type="submit" value="add to cart" name="add_to_cart" class="btn">
     </form>
      <?php
         }
      }else{
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>
   </div>

</section>










      
      


<?php include 'footer.php'; ?>


<script src="js/script.js"></script>

</body>
</html>