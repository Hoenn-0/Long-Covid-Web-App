<?php


$db_Server = "localhost";
$db_Username = "root";
$db_Password = "";
$db_Name = "elaros_lc";   

    $conn = mysqli_connect($db_Server, $db_Username, $db_Password, $db_Name);

    if(!$conn){
        die("Connection Failed: ". mysqli_connect_error());
    }
?>