<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if (!isset($user_id)) {
   header('location:login.php');
}

if (isset($_POST['add_to_cart'])) {

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if (mysqli_num_rows($check_cart_numbers) > 0) {
      $message[] = 'already added to cart!';
   } else {
      mysqli_query($conn, "INSERT INTO `cart`(user_id, name, price, quantity, image) VALUES('$user_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
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
   <title>home</title>
   <link rel="stylesheet" href="styles.css">

   <!-- Start WOWSlider.com HEAD section -->
   <link rel="stylesheet" type="text/css" href="engine1/style.css" />
   <script type="text/javascript" src="engine1/jquery.js"></script>
   <!-- End WOWSlider.com HEAD section -->
</head>

<body>

   <?php include 'header.php'; ?>

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

   <section class="products">

      <div id="slider">
         <!-- Start WOWSlider.com BODY section -->
         <div id="wowslider-container1">
         <div class="ws_images"><ul>
               <li><img src="data1/images/aci_pure_brand_h_8_jan_2023.jpg" alt="ACI PURE Brand H 8 Jan 2023" title="ACI PURE Brand H 8 Jan 2023" id="wows1_0"/></li>
               <li><img src="data1/images/commodity_monthly_bazar_h_4_jan_23.jpg" alt="Commodity Monthly Bazar H 4 Jan 23" title="Commodity Monthly Bazar H 4 Jan 23" id="wows1_1"/></li>
               <li><img src="data1/images/eagle_super_aerosol_475ml_buy_1_get_1_h_10_mar_2022.jpg" alt="Eagle Super Aerosol 475ml Buy 1 Get 1 H 10 Mar 2022" title="Eagle Super Aerosol 475ml Buy 1 Get 1 H 10 Mar 2022" id="wows1_2"/></li>
               <li><img src="data1/images/himalaya_h_11_sep_2022.jpg" alt="Himalaya H 11 Sep 2022" title="Himalaya H 11 Sep 2022" id="wows1_3"/></li>
               <li><a href="http://wowslider.net"><img src="data1/images/plb_h_24_aug_2021.jpg" alt="javascript image slider" title="PLB H 24 Aug 2021" id="wows1_4"/></a></li>
               <li><img src="data1/images/shwapno_queries_h_5_oct_2021.jpg" alt="Shwapno Queries H 5 Oct 2021" title="Shwapno Queries H 5 Oct 2021" id="wows1_5"/></li>
            </ul></div>
            <div class="ws_bullets"><div>
               <a href="#" title="ACI PURE Brand H 8 Jan 2023"><span><img src="data1/tooltips/aci_pure_brand_h_8_jan_2023.jpg" alt="ACI PURE Brand H 8 Jan 2023"/>1</span></a>
               <a href="#" title="Commodity Monthly Bazar H 4 Jan 23"><span><img src="data1/tooltips/commodity_monthly_bazar_h_4_jan_23.jpg" alt="Commodity Monthly Bazar H 4 Jan 23"/>2</span></a>
               <a href="#" title="Eagle Super Aerosol 475ml Buy 1 Get 1 H 10 Mar 2022"><span><img src="data1/tooltips/eagle_super_aerosol_475ml_buy_1_get_1_h_10_mar_2022.jpg" alt="Eagle Super Aerosol 475ml Buy 1 Get 1 H 10 Mar 2022"/>3</span></a>
               <a href="#" title="Himalaya H 11 Sep 2022"><span><img src="data1/tooltips/himalaya_h_11_sep_2022.jpg" alt="Himalaya H 11 Sep 2022"/>4</span></a>
               <a href="#" title="PLB H 24 Aug 2021"><span><img src="data1/tooltips/plb_h_24_aug_2021.jpg" alt="PLB H 24 Aug 2021"/>5</span></a>
               <a href="#" title="Shwapno Queries H 5 Oct 2021"><span><img src="data1/tooltips/shwapno_queries_h_5_oct_2021.jpg" alt="Shwapno Queries H 5 Oct 2021"/>6</span></a>
            </div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">jquery slider</a> by WOWSlider.com v9.0</div>
         <div class="ws_shadow"></div>
         </div>	
         <script type="text/javascript" src="engine1/wowslider.js"></script>
         <script type="text/javascript" src="engine1/script.js"></script>
         <!-- End WOWSlider.com BODY section -->
      </div> 

      <h1 class="title">latest products</h1>

      <div class="box-container">

         <?php
         $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 6") or die('query failed');
         if (mysqli_num_rows($select_products) > 0) {
            while ($fetch_products = mysqli_fetch_assoc($select_products)) {
         ?>
               <form action="" method="post" class="box">
                  <img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="">
                  <div class="name"><?php echo $fetch_products['name']; ?></div>
                  <div class="price">Tk <?php echo $fetch_products['price']; ?>/-</div>
                  <input type="number" min="1" name="product_quantity" value="1" class="qty">
                  <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
                  <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
                  <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
                  <input type="submit" value="add to cart" name="add_to_cart" class="btn">
               </form>
         <?php
            }
         } else {
            echo '<p class="empty">no products added yet!</p>';
         }
         ?>

      </div>


      <div class="load-more" style="margin-top: 2rem; text-align:center">
         <a href="shop.php" class="option-btn">load more</a>
      </div>

   </section>


   <div id="flex">

      <div class="image">
         <img src="images/about/shwapnoFamily-Colleagues.png" alt="">
         <p class="ab">2008<br>ESTABLISHED</p>
      </div>
      <div class="image">
         <img src="images/about/shwapnoFamily-Customers-served.png" alt="">
         <p class="ab">4,300+<br>COLLEAGUES</p>
      </div>
      <div class="image">
         <img src="images/about/shwapnoFamily-Established.webp" alt="">
         <p class="ab">200+<br>OUTLETS</p>
      </div>
      <div class="image">
         <img src="images/about/shwapnoFamily-Outlets.png" alt="">
         <p class="ab">40,000+<br>CUSTOMERS SERVED DAILY</p>
      </div>

   </div>


   <?php include 'footer.php'; ?>

   <script src="js/script.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>

</html>