<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Sign in</title>
   <link rel="stylesheet" href="css/signin2.css">
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

            <p>Login to your account </p>
         </div>
         <div class="form-group">
            <label>Email: </label><br>
            <input class="form-control" type="email" name="email" required>
         </div>
         <div class="form-group">
            <label>Password: </label><br>
            <input class="form-control" type="password" name="password" required>
         </div>
         <div class="form-group small">
         Forgot Password? <a href="forgot-pass.php"> Click Here </a>
         </div>
         <div class="form-group">
            
            <input class="btn w-txt" type="submit" name="signin" value="Sign In ">
         </div>

      </form>
      <div class="form-group text-center">
      Don't have an account? <a href="signup.php"> Create One </a>
         </div> 

         <div class="r-txt"> 
         <?php
      if(isset($_POST['signin'])){
         session_start();
         $sql="SELECT * FROM `users` WHERE `email`='$_POST[email]' AND `password`='$_POST[password]'";
         $result=mysqli_query($con, $sql);
         while($row = mysqli_fetch_assoc($result)){
            $_SESSION['username']=$row['username'];
            $_SESSION['email']=$row['email'];
         }

         
      $check_user=mysqli_num_rows($result);

      if($check_user==1){
         $login=true;
         
         $_SESSION['loggedin']=true;
         $_SESSION['email']=$_POST['email'];
         $_SESSION['username']=$username;
         header("location:user_dashboard.php");
        
      }
      else{
         echo "Invalid Credentials!";
      }

      } 
   ?>    
   </div>
   </div>

  
</body>
</html>