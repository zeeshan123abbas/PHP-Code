<?php
$username="root";
$password="";
$server="localhost";
$db="form";

$link=mysqli_connect($server,$username,$password,$db);
if($link){
    ?>
   <script>
    alert("connect...")
   </script>
    <?php
}else{
    ?>
    <script>
        alert("error...")
    </script>
<?php
}


?>