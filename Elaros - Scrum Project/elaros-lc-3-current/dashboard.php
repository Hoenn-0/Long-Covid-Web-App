<?php
	require_once('dbconnection.php');
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elaros Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/dashboard.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />  
    <script src="https://kit.fontawesome.com/8e25d88811.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Symptom', 'Male', 'Female', 'Other'],
        //   <?php

          
        //     $query= mysqli_query($conn, "SELECT VoiceChange, COUNT(Gender) FROM questionnaire RIGHT JOIN elarosuser on questionnaire.PatientID = elarosuser.id WHERE Gender = 'M' AND VoiceChange='Yes'");
        //     $row = mysqli_fetch_assoc($query);
        //     $size = $row['COUNT(Gender)'];
        //     $gender = array();
        //     $gender += array('VoiceChangeM' => $size);

        //     $query= mysqli_query($conn, "SELECT VoiceChange, COUNT(Gender) FROM questionnaire RIGHT JOIN elarosuser on questionnaire.PatientID = elarosuser.id WHERE Gender = 'F' AND VoiceChange='Yes'");
        //     $row = mysqli_fetch_assoc($query);
		// 	$size = $row['COUNT(Gender)'];
        //     $gender = +array('VoiceChangeF' => $size);

        //     $query=mysqli_query($conn, "SELECT VoiceChange, COUNT(Gender) FROM questionnaire RIGHT JOIN elarosuser on questionnaire.PatientID = elarosuser.id WHERE Gender = 'O' AND VoiceChange='Yes'");
        //     $row = mysqli_fetch_assoc($query);
		// 	$size = $row['COUNT(Gender)'];
        //     $gender = +array('VoiceChangeO' => $size);

        //     echo "['VoiceChange', ".$gender['VoiceChangeM'].", ".$gender['VoiceChangeF'].", ".$gender['VoiceChangeO']."], ";

        //   ?>
        ]);

        var options = {
          chart: {
            title: 'Symptom Comparison between Genders',
            subtitle: 'Long Covid Questionnaire'
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
		
	 <!--PieChart-->
		<script type="text/javascript">
			
			google.charts.load('current', {'packages':['corechart']});
			google.charts.setOnLoadCallback(drawChart);

			function drawChart() {

				var data = google.visualization.arrayToDataTable([
				['Answered Precovid', 'Amount'],

                <?php
                	$query = "SELECT precovid, count(*) as number FROM elarosuser WHERE userType ='p' GROUP BY precovid";
                    $result = mysqli_query($conn, $query);
                    while($row = mysqli_fetch_array($result)){

                        echo "['";

                        if ($row["precovid"]==1){
                        echo 'Answered';
                        }
                        elseif($row["precovid"]==0){
                        echo 'Not Answered';
                        }

                        
                        echo "', ".$row["number"]."],";
                    }
				?>
				]);

				var options = {
				title: 'Percentage of Patient Pre-Covid Questionnaire Submissions',is3D: true, colors: ['#28a745', '#f08080']
				};
         
				var chart = new google.visualization.PieChart(document.getElementById('piechart'));

				chart.draw(data, options);
			}
    </script>
	<script type="text/javascript">
				// Load google charts
				google.charts.load('current', {'packages':['corechart']});
				google.charts.setOnLoadCallback(drawChart);

				// Draw the chart and set the chart values
				function drawChart() {
				  var data = google.visualization.arrayToDataTable([
				  ['Symptoms', 'No of Patients'],
				  
				<?php	
                	$result = mysqli_query($conn, "SELECT COUNT(VoiceChange) FROM questionnaire WHERE VoiceChange='Yes'");
					$row = mysqli_fetch_assoc($result);
					$size = $row['COUNT(VoiceChange)'];
					$symptoms = array('VoiceChange' => $size);
					
					$result = mysqli_query($conn, "SELECT COUNT(NoisyBreathing) FROM questionnaire WHERE NoisyBreathing='Yes'");
					$row = mysqli_fetch_assoc($result);
					$size = $row['COUNT(NoisyBreathing)'];
					$symptoms += array('NoisyBreathing' => $size);
					
					$result = mysqli_query($conn, "SELECT COUNT(EatingDifficulties) FROM questionnaire WHERE EatingDifficulties='Yes'");
					$row = mysqli_fetch_assoc($result);
					$size = $row['COUNT(EatingDifficulties)'];
					$symptoms += array('EatingDifficulties' => $size);
					
					$result = mysqli_query($conn, "SELECT COUNT(WeightLoss) FROM questionnaire WHERE WeightLoss='Yes'");
					$row = mysqli_fetch_assoc($result);
					$size = $row['COUNT(WeightLoss)'];
					$symptoms += array('WeightLoss' => $size);
					
					$result = mysqli_query($conn, "SELECT COUNT(UnpleasantDreams) FROM questionnaire WHERE UnpleasantDreams='Yes'");
					$row = mysqli_fetch_assoc($result);
					$size = $row['COUNT(UnpleasantDreams)'];
					$symptoms += array('UnpleasantDreams' => $size);
					
					
					echo "['Changes in voice', ".$symptoms['VoiceChange']."],";
					echo "['Breathing Noisily', ".$symptoms['NoisyBreathing']."],";
					echo "['Difficulties Eating', ".$symptoms['EatingDifficulties']."],";
					echo "['Loss of Weight', ".$symptoms['WeightLoss']."],";
					echo "['Unpleasant Dreams', ".$symptoms['UnpleasantDreams']."],";
					
				?>
				
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Pre-Covid Symptoms', 'width':550, 'height':400 , colors: ['#ffbe0b', '#fb5607', 'ff006e','8338ec','3a86ff'],is3D: true};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart2'));
  chart.draw(data, options);
}
</script>
   
</head>
    <div class="container-fluid sticky-header">
        <div id="mainbox" onclick="openfunction()">&#9776;</div>

            <div id="menu" class="sidemenu">
                    <a href="dashboard.php">Dashboard</a>
					<a href="#">Register Patient</a>
                    <a href="#">Export</a>
                    <a href="logout.php">Log Out</a>
                    <a href="#" class="closebtn" onclick="closefunction()">&times;</a>
            </div>
                <script type="text/javascript">
                    function openfunction(){
                        document.getElementById("menu").style.width="300px";
                    }
                    function closefunction(){
                        document.getElementById("menu").style.width="0px";
                    }
                </script>
             <div class="header-logo" style="float: right; padding-top: 30px;">
                <a href="dashboard.php" style ="text-decoration:none; color: #000;">Elaros</a>
             </div>
            </div>
			<div class="topLine1" style="padding-top: 50px"></div>
<body>

 
    <div class="dashboardBox">
        <div class="row offset-2">
             <div class="col-md-5" style="text-align: center; padding-top: 50px;">
                <?php			

                // Perform query
                $result = mysqli_query($conn, "SELECT COUNT(userType) FROM elarosuser WHERE userType ='p'");
                $row = mysqli_fetch_assoc($result);
                $size = $row['COUNT(userType)'];
                echo "Number of patients registered: <h1>";
                echo $size;
                echo "</h1>";
			    mysqli_free_result($result);

                mysqli_close($conn);

                $dailycovid = json_decode(file_get_contents("https://api.apify.com/v2/key-value-stores/KWLojgM5r1JmMW4b4/records/LATEST?disableRedirect=true"));
                echo "Daily Confirmed Covid-19 Cases (UK): </br>";
                echo "<h1>".$dailycovid->dailyConfirmed."</h1>";
                echo "Total Infected Covid-19 Cases (UK): </br>";
                echo "<h1>".$dailycovid->infected."</h1>"

                ?>
            </div>
                <div class="col-md-5" style="padding-top: 30px;" >
                    <div id="piechart" style="max-width: 450px; height: 400px;"></div>
					 
                </div>
         </div>

			<div class="row offset-2">
			 			
			    <div class="col-md-">
			        <div id="piechart2" style="width: 450px; height: 400px;"></div>
			    </div>
						
			<div class="col-md-6">
            <div id="columnchart_material" style="width: 800px; height: 500px;"></div>

			</div>
		</div>
    </div>
 </body>

<?php include("footer.php") ?>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                