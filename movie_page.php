<?php
include('include/connection.php');
$sql="SELECT * FROM movies WHERE id=$_GET[mn]";
$result=mysqli_query($con, $sql);
while($row = mysqli_fetch_assoc($result))
{

   $name=$row['name'];
   $image=$row['image'];
   $trailer=$row['trailer'];
   $desc=$row['description'];
   $rating=$row['rating'];
   $storyline=$row['storyline'];
   $country=$row['country'];
   $genre=$row['genre'];
   $director=$row['director'];
   $writers=$row['writers'];
   $duration=$row['duration'];
   $cast=$row['cast'];
   $release_date=$row['release_date'];

}

?>



<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>FlixHub <?php echo $name;?> </title>
   <link rel="stylesheet" href="css/movie_page.css">
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
      <?php
            session_start();
            if($_SESSION['loggedin']==true){
                ?>
                <a class="btn-grad" href="user_dashboard.php"> Home  </a>
                <?php
            }
            else{
               ?>

                <a class="btn-grad" href="index.php"> Home </a>
               <?php
            }
            
            if($_SESSION['loggedin']==true){
                ?>
                <a class="btn-grad" href="signout.php"> LogOut  </a>
                <?php
            }
            else{
               ?>
               <a class="btn-grad" href="signin.php"> LogIn  </a>
               <a class="btn-grad" href="signup.php"> Register </a>
                <?php
            }
      ?>
      </div>
      
   </section>
   <hr class="hr">


   <section class="content">
     <div class="trailer-container">
         <h2><?php echo $name;?>
         <?php
            
            //=================Save to Fav Button==============//

            if($_SESSION['loggedin']==true){
            ?>
               <div class="save-container">
               
                  <form class="save-form" action=""method="post">
                     <input type="submit" class="save-to-fav-btn" name="save-to-fav" value="Save to Fav">
                  </form>
               </div>
            <?php
         
            }
         ?>
         <h2>
         <?php
             if(isset($_POST['save-to-fav'])){
               
               
               $sql="SELECT * FROM movies WHERE id=$_GET[mn]";
               $result = mysqli_query($con, $sql);
               while($row = mysqli_fetch_assoc($result))
               {
                  $movie_page=$row['movie_page'];
                  $image=$row['image'];
                  $name=$row['name'];
                  
                  
               } 
               $sql="SELECT * FROM users WHERE `email`='$_SESSION[email]'";
               $result = mysqli_query($con, $sql);
               while($row = mysqli_fetch_assoc($result))
               {
                  $movies=$row['movies'];
                  
                  
               } 
               if($movies==""){
                  $fav_movies=array();
                  array_push($fav_movies,$name );
                  $favMovies=implode(",",$fav_movies);
                  $sql="UPDATE `users` SET `movies`='$favMovies' WHERE `email`='$_SESSION[email]'";
                  $result = mysqli_query($con, $sql);

               }
              
               else{
                  $fav_movies=array("$movies");
                  array_push($fav_movies,$name );
                  $favMovies=implode(",",$fav_movies);
                  $sql="UPDATE `users` SET `movies`='$favMovies' WHERE `email`='$_SESSION[email]'";
                  $result = mysqli_query($con, $sql);                        
               }
               
               
            } 
         ?>
         <iframe  class="video-size"width="860" height="515" src="<?php echo $trailer;?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

     </div>
     <div class="desc-container">
         <div class="desc">
            <?php echo $desc;?>
         </div>
         <div class="rating">
            <span><?php echo $rating;?></span>
            <i class="fa fa-imdb" style="font-size:48px;color:orange"></i>

         </div>
      </div>
      <div class="storyline">
         <h3> Storyline </h3>
         <p>
      <?php echo $storyline; ?>
         </p>
      </div>
         
         
    
      <div class="more-info">
         <div class="image-container">
            <img class="info-image"src="<?php echo $image;?>">
         </div>
         <div class="info-container">
           <span> Country:  <?php echo $country ;?>  </span><br><br>

           <span> Release date:  <?php echo $release_date ;?>  </span><br><br>
            
            <span>Genre:  <?php echo $genre ;?>  </span><br><br>
            
            <span>Director:  <?php echo $director ;?>  </span><br><br>
         
            <span>Writers:  <?php echo $writers ;?>  </span><br><br>
         
           <span> Cast:  <?php echo $cast ;?>  </span><br><br>
         
            <span>Runtime:  <?php echo $duration ;?>  </span>

         </div>
      </div>
    

   </section>
   
   
  
</div>
</body>
</html>
