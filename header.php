<!DOCTYPE html>
<html>

<head>
   <meta charset='utf-8'>
   <meta http-equiv='X-UA-Compatible' content='IE=edge'>
   <title>Page Title</title>
   <link rel="stylesheet" href="css/header.css">
   <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>

   <!-- Header Section Starts from here. -->

   <header class="header">
      <a href="home.php" class="logo"><img src="logo.png" alt="Dream Super Shop"></a>

      <nav class="navbar">
         <a href="home.php">Home</a>
         <a href="shop.php">Shop</a>
         <a href="cart.php">Cart</a>
         <a href="profile.php">Profile</a>
         <a href="contact.php">Contacts</a>
         <a href="return.php">Return</a>
         <a href="faqs.php">FAQs</a>
      </nav>

      <div class="icons">
         <div class="fas fa-bars" id="menu-btn"></div>
         <div class="fas fa-search" id="search-btn"></div>
         <div class="fas fa-shopping-cart" id="cart-btn"></div>
         <div class="fas fa-user" id="login-btn"></div>
      </div>

      <div class="account-box">
         
         <a href="logout.php" class="delete-btn">logout</a>
         <div>new <a href="login.php">login</a> | <a href="register.php">register</a></div>
      </div>












      <form action="" class="search-form">
         <input type="search" id="search-box" placeholder="Search Product Here...">
         <label for="search-box" class="fas fa-search"></label>
      </form>
   </header>

   <!-- Header Section Ends from here. -->

   <script src="js/header.js"></script>

</body>

</html>