<html>

	<head>
	<title>Contact Us</title>
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
        <form id="contactForm" action="contact-form-handler.php" method="post">
            <h1>Contact Us</h1>
            <label>First Name:</label>
            <div class="boxStyle">
                <input type="text" name="firstname" placeholder="Your First Name" required>
            </div>
            <label>Last Name:</label>
            <div class="boxStyle">
                <input type="text" name="lastname" placeholder="Your Last Name">
            </div>
            <label>Email Address:</label>
            <div class="boxStyle">
                <input type="email" name="email" id="yourEmail" placeholder="Your Email" required><br>
            </div>
            <label>Message:</label>
            <div class="boxStyle">
                <textarea name="message" placeholder="Write your message here..." required></textarea><br>
            </div>
            <br>
            <input style="padding-left: 10%; padding-right: 10%;" class="btn btn-primary" name="submit" type="submit" value="Submit">
        </form>
    </div>
	</body>

		<?php include("footer.php") ?>
	

</html> 