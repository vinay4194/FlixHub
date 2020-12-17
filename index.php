<?php
   session_start();
   $_SESSION['loggedin']=false;
?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>FlixHub Home</title>
   <link rel="stylesheet" href="css/dashboard.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Arvo&family=PT+Sans&family=Roboto+Slab:wght@300;400&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="content-wrap">
   <section class="header">
   
      <div class="h-l-container">
      <img class="logo" src="images/logo2.png">
         
      </div>
      
      <div class="h-r-container">
         <a class="btn-grad" href="dashboard_new.php"> Home  </a>
         <a class="btn-grad" href="signin.php"> LogIn  </a>
         <a class="btn-grad" href="signup.php"> Register </a>
         
         <a class="btn-grad" href="contact_us.php"> Contact Us </a>
      </div>
      
   </section>
   <hr class="hr">

   <section class="search-bar">
      <form action="" method="post">
         <input type="text" class="search-box" name="searchBox" placeholder="Search.."autocomplete="off"><input type="submit" class="search-btn" value="Search" name="searchBtn">
      </form>

   </section>
      
<?php
   if(isset($_POST['searchBtn']) && $_POST['searchBox'] !== ''){
      
      
      ?>
      <section class="content">
         <?php
         $con= mysqli_connect("localhost","root","","flixhub");
         $sql="SELECT * FROM `movies` WHERE `name` LIKE '%$_POST[searchBox]%'";
         $result = mysqli_query($con, $sql);
         while($row = mysqli_fetch_assoc($result))
         {
            $movie_page=$row['movie_page'];
            $image=$row['image'];
            $name=$row['name'];

            ?>

         <div class="content-item">
            <a class="link" href="<?php echo $movie_page; ?>"><img class="content-image" src="<?php echo $image;?>"></a>
            <h2><?php echo $name;?></h2>
            <p> </p>
         </div>
         <?php
            
         }
         ?>
      </section>
      <?php
   }
   else{
   
   ?>
      

   <section class="content">
      <?php
         $con= mysqli_connect("localhost","root","","flixhub");
         $sql="SELECT * FROM `movies`";
         $result = mysqli_query($con, $sql);
         while($row = mysqli_fetch_assoc($result))
         {
            $movie_page=$row['movie_page'];
            $image=$row['image'];
            $name=$row['name'];
      ?>

         <div class="content-item">
            <a class="link" href="<?php echo $movie_page; ?>"><img class="content-image" src="<?php echo $image;?>"></a>
            <h2><?php echo $name;?> </h2>
            <p> </p>
         </div>
      <?php
         }
      
   }
   ?>
   </section>
   
   <section class="footer">
      More content will be added Soon.   
   <section>
</div>
</body>
</html>