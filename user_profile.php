

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>FlixHub Home</title>
   <link rel="stylesheet" href="css/user_profile.css">
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
         <a class="btn-grad" href="user_dashboard.php"> Home  </a>
         
         
         <a class="btn-grad" href="change_pass.php"> Change Password  </a>
         <a class="btn-grad" href="contact_us.php"> Contact Us </a>
         <a class="btn-grad" href="signout.php"> LogOut  </a>
         
      </div>
      
   </section>
   <hr class="hr">

    <section class="content">
      <?php
      
      session_start();
         $con= mysqli_connect("localhost","root","","flixhub");
         $sql="SELECT * FROM `users` WHERE `email`='$_SESSION[email]'";
         $result = mysqli_query($con, $sql);
         while($row = mysqli_fetch_assoc($result))
         {
            $username=$row['username'];
            $email=$row['email'];
            $dob=$row['dob'];
            $movies=$row['movies'];
      ?>
         <div class="info-container">
            <form class="info-form" action="" method="post">
               <table class="info-table">
                  <tr>
                     <td>Username: </td>
                     <td><input type="text" class="info-box" name="username" value="<?php echo $username ;?>"></td> 
                  </tr>
                  <tr>
                     <td>Email: </td>
                     <td><input type="text" class="info-box" name="email" value="<?php echo $email ;?>"></td> 
                  </tr>
                  <tr>
                     <td>BirthDay: </td>
                     <td><input type="text" class="info-box" name="dob" value="<?php echo $dob ;?> "> </td> 
                  </tr>
                  <tr>
                     
                     <td><input type="submit" class="info-btn" name="submit" value="Save Changes"> </td> 
                  </tr>
               </table>
            </form>
              
         </div>
         
      <?php


         }

      
   
   ?>
    <?php
               
                  if(isset($_POST['submit'])){
                     $sql="UPDATE `users` SET `username`='$_POST[username]',`email`='$_POST[email]',`dob`='$_POST[dob]' WHERE email='$_SESSION[email]'";
                     $result = mysqli_query($con, $sql);
                  }
               ?>
   </section>
   <hr>
   <section class="fav-movies"> 
               
               <br>
               <h3> Favourite Movies </h3>

               <?php
   
      
      

      
         $con= mysqli_connect("localhost","root","","flixhub");
         $sql="SELECT * FROM users WHERE `email`='$_SESSION[email]'";
               $result = mysqli_query($con, $sql);
               while($row = mysqli_fetch_assoc($result))
               {
                  $movies=$row['movies'];
                  $fav_movies=explode(",",$movies);
                  
                  
               }
               foreach($fav_movies as $Fav){
                  $sql="SELECT * FROM `movies` WHERE `name`='$Fav'";
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
               }
      ?>
   </section>
   
</div>
</body>
</html>