<?php
session_start();
if(!isset($_SESSION['name'])){
    header("location:logout.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   <h1>HELLO <?php echo  $_SESSION['name'] ?></h1> 

   <button><a href="end.php">LOGOUT</a></button>
</body>
</html>