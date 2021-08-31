<?php
require_once('dbconnection.php');
?>
<html>

	<head>
		<title>Patient Dashboard</title>
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css\style.css">
    <link rel="icon" href="https://www.flaticon.com/svg/vstatic/svg/2785/2785819.svg?token=exp=1610374283~hmac=0d9bf7f02b3c8025f24f874e194c15b5" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
  
  google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawSChart);
    function drawSChart() {
      var data = google.visualization.arrayToDataTable([
        ["Symptom", "Value", { role: "style" } ],
        ["Symptom", 8, "#b87333"],
        ["Symptom", 10, "silver"],
        ["Symptom", 5, "gold"],
        ["Symptom", 3, "color: #e5e4e2"]
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Severity of Symptoms",
        width: 600,
        height: 400,
        bar: {groupWidth: "75%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
  </script>
    </head>
	
		<?php include("nav.php") ?>
		
	<body>
	<div class="mainContainer">
            <div class="sidebar">
                <br>
                <a href="patientSurvey.php"><span >Questionnaire </span></a>
                <a href="#"><span> Device </span></a>
                <a href="#"><span> Reports </span></a>
                <a href="logout.php" class="logout_btn">Logout</a>
            </div>
			</div>

      <div id="columnchart_values" style="width: 900px; height: 300px;"></div>
	</body>

		<?php include("footer.php") ?>
	

</html> 