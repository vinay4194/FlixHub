<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Sign in</title>
   <link rel="stylesheet" href="css/signup2.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Zilla+Slab:wght@300&display=swap" rel="stylesheet">


<link href="https://fonts.googleapis.com/css2?family=Merienda&family=Zilla+Slab:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Arvo&family=PT+Sans&family=Roboto+Slab:wght@300;400&display=swap" rel="stylesheet">

<?php 
include('include/connection.php');
$login=false;
?>

</head>
<body>
<div class="top-btn">
   <a class="btn-grad" href="index.php"> Home  </a>
   </div>
   <div class="sign-in-form">
      <form action="" method="post">
         <div class="form-header ">
            <img class="logo"src="images/logo4.png">

            <p>Create a new Account </p>
         </div>
         <div class="form-group">
            <label>Username: </label><br>
            <input class="form-control" type="text" name="username" placeholder="Pick a username" required>
         </div>
         <div class="form-group">
            <label>Email: </label><br>
            <input class="form-control" type="email" name="email" placeholder="Enter your email" required>
         </div>
         <div class="form-group">
            <label>Password: </label><br>
            <input class="form-control" type="password" name="password" placeholder="Pick a password" required>
         </div>
         <div class="form-group">
            <label>Birthday: </label><br>
            <input class="form-control" type="date" name="dob"  >
         </div>
         
         <div class="form-group">
            
            <input class="btn w-txt" type="submit" name="signup" value="Sign Up ">
         </div>
         

         

      </form>
      <div class="form-group text-center">
      Already have an account? <a href="signin.php"> Login  </a>
         </div> 

         <div class="r-txt"> 
         <?php
      
      if(isset($_POST['signup'])){

         $sql=" INSERT INTO `users`(`username`, `email`, `password`, `dob`) VALUES ('$_POST[username]','$_POST[email]','$_POST[password]','$_POST[dob]')";

         $result=mysqli_query($con,$sql);

   ?>
         <script type="text/javascript">
            alert("Account Created Successfully");
            window.location.href="signin.php";
         </script>
   <?php

      }
   ?>
   </div>
   </div>

  
</body>
</html>