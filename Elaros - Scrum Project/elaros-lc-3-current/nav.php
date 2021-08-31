<?php 
session_start();
?>
<!--Nav Bar text-->
<nav>
    <div class="elaros-logo">
        <?php
                if(isset($_SESSION['userType']))
                {
                    if($_SESSION['userType'] == 'c'){
                        echo "<a href='dashboard.php'><h4>Elaros</a></h4>";  
                    }
                    else if($_SESSION['userType'] == 'p'){
                        echo "<a href='patient.php'><h4>Elaros</a></h4>";
                    }      
                }
                else{
                    echo "<a href='index.php'><h4>Elaros</a></h4>";  
                }
            ?>
    </div>
    <ul class="nav-links" id="navlinks">
        <li>
            <?php
                if(isset($_SESSION['userType']))
                {
                    if($_SESSION['userType'] == 'c'){
                        echo "<a href='clinician.php'>Profile</a>";
                    }
                    else if($_SESSION['userType'] == 'p'){
                        echo "<a href='patient.php'>Profile</a>";
                    }      
                }
                else{
                    echo "<a href='index.php'>Log In</a>";  
                }
            ?>
        </li>
        <li>
            <a href="about.php">About Us</a>
        </li>
        <li>
            <a href="contact.php">Contact Us</a>
        </li>
    </ul>
    <div class="burger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
    </div>
</nav>

<!-- <div class="topLine"></div> -->
<script src="js/app.js"></script> 