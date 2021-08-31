<?php
    $statusMsg = '';
    if(isset($_POST['submit'])){

        $FirstName = $_POST['firstname'];
        $LastName = $_POST['lastname'];

        $visitor_email = $_POST['email'];
        $message = $_POST['message'];

        if(!empty($FirstName) && !empty($LastName) && !empty($visitor_email) && !empty($message))
        {
            if(filter_var($visitor_email, FILTER_VALIDATE_EMAIL) == false)
            {
                $statusMsg = 'Please enter your valid email.';
            }
            else
            {
                $email_subject = 'New Form Submission';

                $email_body = "First Name: $FirstName.\n"."Last Name: $LastName.\n"."User Email: $visitor_email.\n"."User Message: $message.\n";

                $to = 'usamarasab@googlemail.com';

                $headers = "From $visitor_email \r\n";

                $headers .= "Reply-To: $visitor_email \r\n";

                if(mail($to,$email_subject,$email_body,$headers)){
                    header("Location: contact.php?emailsent");
                }
                else{
                    header("Location: contact.php?error=emailnotsent");
                }
            }
        }
        else{
            header("Location: contact.php?error=emptyfields");
        }
    }
    else{
        header("Location: contact.php");
    }