<?php
if(isset($_POST['sign-up'])){

    require 'dbconnection.php';

    $first_name = $_POST['firstname'];
    $last_name = $_POST['lastname'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $passwordRepeat = $_POST['password-repeat'];
    $userType = 'p';
    $preCovid = 0;

    if(empty($first_name) || empty($last_name) || empty($username) || empty($email) || empty($password) || empty($passwordRepeat)){
        header("Location: register.php?error=emptyfields&firstname=".$first_name."&lastname=".$last_name);
        exit();
    }
    else if(!filter_var($email, FILTER_VALIDATE_EMAIL) && !preg_match("/^[a-zA-Z0-9]*$/",$first_name) && !preg_match("/^[a-zA-Z0-9]*$/",$last_name)){
        header("Location: register.php?error=invalidmail");
        exit();
    }
    else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        header("Location: register.php?error=invalidmail&firstname=".$first_name."&lastname=".$last_name);
        exit();
    }
    else if($password !== $passwordRepeat){
        header("Location: register.php?error=passwordcheck&&email=".$email);
        exit();
    }
    else{
        $sql = "SELECT email FROM elarosuser WHERE email=?";
        $stmt = mysqli_stmt_init($conn);

        if(!mysqli_stmt_prepare($stmt, $sql)){
            header("Location: register.php?error=sqlerror");
            exit();
        }
        else{
            mysqli_stmt_bind_param($stmt, "s", $email);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            $resultCheck = mysqli_stmt_num_rows($stmt);
            if($resultCheck > 0){
                header("Location: register.php?error=emailtaken");
                exit();
            }
            else{
                $sql = "INSERT INTO elarosuser (username, pwd, userType, firstname, lastname, email, preCovid) VALUES (?, ?, ?, ?, ?, ?, ?)";
                $stmt = mysqli_stmt_init($conn);
                if(!mysqli_stmt_prepare($stmt, $sql)){
                    header("Location: register.php?error=sqlerror");
                    exit();
                }
                else{
                    //$hashedPwd = password_hash($password, PASSWORD_DEFAULT);

                    mysqli_stmt_bind_param($stmt, "ssssssi", $username, $password, $userType, $first_name, $last_name, $email, $preCovid);
                    mysqli_stmt_execute($stmt);
                    header("Location: register.php?signup=success");
                    exit();
                }
            }
        }
    }
    mysqli_stmt_close($stmt);
    mysqli_close($conn);

}
else{
    header("Location: register.php");
    exit();
}


