<?php
session_start();

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

<?php
include "conn.php";
if(isset($_POST['save'])){
    $email=$_POST['email'];
    $pass=$_POST['password'];
     
    $query="select * from login where email='$email'";
    $chk=mysqli_query($link,$query);
    $num=mysqli_num_rows($chk);
    if($num){
        $email_pass=mysqli_fetch_array($chk);
        $dbpass=$email_pass['password'];
        $_SESSION['name'] = $email_pass['name'];
       

        $decode=password_verify($pass,$dbpass);
     
        if($decode){
            echo "login successful";
            ?>
            <script>
                location.replace("log.php");
            </script>
            <?php
        }else{
            echo "password incorrect";
        }
    }else{
        echo "email is not verify...";
    }
}


?>





    <h1 class="text-center mt-5 mb-5">Login Form</h1>
<form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post">
    <div class="container">
        <div class="row">
<div class="mb-3 col-lg-12">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input type="email" class="form-control" name="email">
  <p id="email"></p>
</div>
<div class="mb-3 col-lg-12">
  <label for="exampleFormControlInput1" class="form-label">password</label>
  <input type="number" class="form-control" name="password">
</div>
    <div class="col">
    <input type="submit" name="save" id="" class="btn btn-primary mt-5 mb-5 ">
    </div>

    <div class="col">
   

    </div>
    </form>

    <p class="text-center"><a href="login.php">SIGNUP PAGE</a></p>
    </div>
    </div>
</body>
</html>