<?php
   session_start();
   $_SESSION['loggedin']=false;
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Contact Us</title>
   <link rel="stylesheet" href="css/contact_us1.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Arvo&family=PT+Sans&family=Roboto+Slab:wght@300;400&display=swap" rel="stylesheet">
</head>
<body>
<div class="content-wrap">
   <section class="header">
   
      <div class="h-l-container">
      <img class="logo" src="images/logo2.png">
         
      </div>
      
      <div class="h-r-container">
      <?php
      
            if($_SESSION['loggedin']==true){
                ?>
                <a class="btn-grad" href="user_dashboard.php"> Home  </a>
                <a class="btn-grad" href="signout.php"> LogOut  </a>
                <?php
            }
            else{
               ?>

                  <a class="btn-grad" href="signin.php"> LogIn  </a>
                  <a class="btn-grad" href="signup.php"> Register </a>
            
                  <a class="btn-grad" href="index.php"> Home </a>
               <?php
            }
            ?>
      
      </div>
      
   </section>
   <hr class="hr">

   <section class="content-form">
      <form action="" method="post" id="usrform">
         <div class="form-group">
            <label>Your Name: </label><br>
            <input class="form-control" type="text" name="name" required>
         </div>
         <div class="form-group">
            <label>Your Email: </label><br>
            <input class="form-control" type="email" name="email" required>
         </div>
         <div class="form-group">
            <label>Your message: </label><br>
            <textarea class="form-control"rows="8" cols="60" name="message" form="usrform"></textarea>
         </div>
         <div class="form-group">
            
            <input class="btn-grad btn-normal" type="submit" name="submit" value="Submit">
         </div>
         
      </form>
   </section>
</div>
<?php
if(isset($_POST['submit'])){
   include('include/connection.php');
   $sql="INSERT INTO `queries`(`name`, `email`, `message`) VALUES ('$_POST[name]','$_POST[email]','$_POST[message]')";
   $result=mysqli_query($con,$sql);
}
?>
</body>
</html>