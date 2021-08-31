<?php

if(isset($_POST['login'])){
    require 'dbconnection.php';

    $email =$_POST['username']; 
    $password =$_POST['password']; 

    if(empty($email) || empty($password)){
        header("Location: index.php?error=emptyfields");
        exit();
    }
    else{
        $sql = "SELECT * FROM elarosuser WHERE username=?";
        $stmt = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt, $sql)){
            header("Location: index.php?error=sqlerror");
            exit();
        }
        else{
            mysqli_stmt_bind_param($stmt,"s", $email);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
            if($row = mysqli_fetch_assoc($result)){
                // $pwdCheck = password_verify($password, $row['password']);
                // $pwdCheck = $password;
                if ($password == $row["pwd"]){
                    $pwdCheck = true;
                }
                if($password != $row['pwd']){
                    header("Location: index.php?error=wrongpwd");
                    
                    exit();
                }
                else if($pwdCheck == true){
                    session_start();
                    $_SESSION['userID'] = $row['id'];
                    $_SESSION['userEmail'] = $row['email'];
                    $_SESSION['userType'] = $row['userType'];

                    if($_SESSION['userType'] == 'c'){
                    header("Location: dashboard.php");
                    exit();
                    }
                    else if($_SESSION['userType'] == 'p'){
                        header("Location: patient.php");
                        exit();
                    }
                }
                else{
                header("Location: index.php?error=wrongpwd");
                exit();
                }
            }
            else{
                header("Location: index.php?error=nouser");
                exit();
            }
        }
    }
}
else{
    header("Location: index.php");
    exit();
}