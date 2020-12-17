

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>FlixHub Change Password</title>
   <link rel="stylesheet" href="css/change_pass.css">
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
         
         
         
         <a class="btn-grad" href="contact_us.php"> Contact Us </a>
         <a class="btn-grad" href="signout.php"> LogOut  </a>
         
      </div>
      
   </section>
   <hr class="hr">

    <section class="content">
      <div class="content-div">
      <form action="" method="post">
      <table>
         <tr>
            <td class="small-font">Current Password: </td>
            <td><input class="common-input" type="password" name="currentpass"></td> 
         </tr>    
         <tr>
            <td class="small-font">New Password: </td>
            <td><input class="common-input" type="password" name="newpass"> </td>
         </tr> 
            
         <tr>
            <td><input type="submit" class="change-pass-btn" name="submit" value="Submit"> </td>
         </tr>
      </table>
   </form>

      </div>
   </section>
   <?php
   session_start();
      if(isset($_POST['submit']))
      {
         $con= mysqli_connect("localhost","root","","flixhub");
         $sql="SELECT * FROM `users` WHERE `email`='$_SESSION[email]'";
         $result=mysqli_query($con, $sql);
         while($row=mysqli_fetch_assoc($result)){
         if($_POST['currentpass']==$row['password']){
         $sql="UPDATE `users` SET `password`='$_POST[newpass]' WHERE `email`='$_SESSION[email]'";
         $result=mysqli_query($con, $sql);
      
         ?>
         <script type="text/javascript">
         alert("Password Updated Successfully");
         window.location.href="user_profile.php";
         </script>
         <?php
         }
         else{
            ?>
            <span class="alert"><?php
            echo"Enter correct password!";
            ?>
            </span>
            <?php
         }
      }
         
      }
   ?>
</div>
</body>
</html>