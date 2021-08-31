
<html>

	<head>
		<title>Homepage</title>
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css\style.css">
    <link rel="icon" href="https://www.flaticon.com/svg/vstatic/svg/2785/2785819.svg?token=exp=1610374283~hmac=0d9bf7f02b3c8025f24f874e194c15b5" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	</head>
	
		<?php include("nav.php") ?>
	
	<body>
		<div class="container">
		
        <form id="contactForm" action="sign.up-inc.php" method="POST">
        <br>
            <div class="title">
                <h3>Registration Form</h3>
            </div>
            <label>First Name:</label>
            <div class="boxStyle">
                <input type="text" name="firstname" value="" placeholder="Enter Your First Name" required>
            </div>
            <label>Last Name:</label>
            <div class="boxStyle">
                <input type="text" name="lastname" value="" placeholder="Enter Your Last Name" required>
            </div>
            <label>Type your Email:</label>
            <div class="boxStyle">
                <input type="text" name="email" value="" placeholder="Enter Your Email" required>
            </div>
            <label>Type your Username:</label>
            <div class="boxStyle">
                <input type="text" name="username" value="" placeholder="Enter Your Username" required>
            </div>
            <label>Type your Password:</label>
            <div class="boxStyle">
                <input type="password" name="password" value="" placeholder="Enter Your Password" required>
            </div>
            <label>Type your Password Again:</label>
            <div class="boxStyle">
                <input type="password" name="password-repeat" value="" placeholder="Confirm Your Password" required>
            </div>
            <input style="padding-left: 10%; padding-right: 10%;" class="btn btn-success" name="sign-up" type="submit" value="Register">
            <br>
            <br>
        </form>
		</div>
	</body>

		<?php include("footer.php") ?>
	

</html>