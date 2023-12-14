<?php
include "conn.php";
if(isset($_POST['save'])){
    $name=mysqli_real_escape_string($link,$_POST['name']);
    $email=mysqli_real_escape_string($link,$_POST['email']);
    $password=mysqli_real_escape_string($link,$_POST['pass']);
    $cpassword=mysqli_real_escape_string($link,$_POST['cpass']);

    $pass=password_hash($password,PASSWORD_BCRYPT);
    $cpass=password_hash($cpassword,PASSWORD_BCRYPT);
    $ins="select * from login where email='$email'";
    $qq=mysqli_query($link,$ins);
    $count=mysqli_num_rows($qq);
    if($count>0){
        ?>
        <script>
      alert( "Email already exist...");
        </script>
     
        <?php
    }else{
        if($password===$cpassword){
            $sel="insert into login (name,email,password,cpassword)values('$name','$email','$pass','$cpass')";
            mysqli_query($link,$sel);
            header("location:logout.php");
        }else{
            ?>
          <script>
           alert( "Password does not match.......");
          </script>
            
        <?php
        }

    }

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
  <h1 class="text-center mb-5 mt-5">LOG IN Page</h1>
<form action="" method="post">
    <div class="container">
        <div class="row">
        <div class="mb-3 col-lg-6">
  <label for="exampleFormControlInput1" class="form-label">Name</label>
  <input type="text" class="form-control" name="name">
</div>
<div class="mb-3 col-lg-6">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input type="email" class="form-control" name="email">
  <p id="email"></p>
</div>
<div class="mb-3 col-lg-6">
  <label for="exampleFormControlInput1" class="form-label">password</label>
  <input type="number" class="form-control" name="pass">
</div>
<div class="mb-3 col-lg-6">
  <label for="exampleFormControlInput1" class="form-label">Cpassword</label>
  <input type="number" class="form-control" name="cpass">
  <p id="cpass"></p>
</div>
    <div class="col">
    <input type="submit" name="save" id="" class="btn btn-primary mt-5 mb-5">
    </div>

    <p class="text-center"><a href="logout.php">If you have already account plz, LOGIN</a></p>
    </form>
    </div>
    </div>
</body>
</html>