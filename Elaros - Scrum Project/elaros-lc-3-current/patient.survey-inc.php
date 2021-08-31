<?php
session_start();

if(isset($_POST['survey-submit'])){
    require 'dbconnection.php';

    $PatientID = $_SESSION['userID'];

    $agreement = $_POST['agreement'];

    $openingQuestions = $_POST['covidHospAdmis'];

    $servicesUsed = $_POST['otherServ'];

    $Q1_1 = $_POST['qPd1_1'];    /* add in */ 
    $Q1_2 = $_POST['qNd1_1'];   
    $Q1_3 = $_POST['qPd1_2'];   /* add in */ 
    $Q1_4 = $_POST['qNd1_2'];    
    $Q1_5 = $_POST['qPd1_3'];   /* add in */ 
    $Q1_6 = $_POST['qNd1_3'];    
    $Q2_1 = $_POST['cough'];
    $Q2_2 = $_POST['voice'];
    $Q2_3 = $_POST['noisy'];
    $Q2_4 = $_POST['sq2'];
    $Q3_1 = $_POST['difDrink'];
    $Q3_2 = $_POST['sq3'];
    $Q3_3 = $_POST['conWeig'];
    $Q4_1 = $_POST['fatigue'];
    $Q4_2 = $_POST['sq4'];
    $Q5_1 = $_POST['cntrBowel'];
    $Q5_2 = $_POST['cntrBlad'];
    $Q5_3 = $_POST['sq5'];
    $Q6_1 = $_POST['pain'];
    $Q6_2 = $_POST['qPd6'];     /* add in */ 
    $Q6_3 = $_POST['qNd6'];
    $Q7_1 = $_POST['conce'];
    $Q7_2 = $_POST['short'];
    $Q7_3 = $_POST['sq7'];
    $Q8_1 = $_POST['qPd8'];     /* add in */ 
    $Q8_2 = $_POST['qNd8'];
    $Q9_1 = $_POST['qPd9'];     /* add in */ 
    $Q9_2 = $_POST['qNd9'];
    $Q10_1 = $_POST['ptsdA'];
    $Q10_2 = $_POST['ptsdB'];
    $Q10_3 = $_POST['ptsdC'];
    $Q10_4 = $_POST['sq10'];
    $Q10_5 = $_POST['harm'];
    $Q11_1 = $_POST['comms'];
    $Q11_2 = $_POST['sq11'];
    $Q12_1 = $_POST['qPd12'];   /* add in */ 
    $Q12_2 = $_POST['qNd12'];
    $Q13_1 = $_POST['qPd13'];   /* add in */ 
    $Q13_2 = $_POST['qNd13'];
    $Q14_1 = $_POST['qPd14'];   /* add in */ 
    $Q14_2 = $_POST['qNd14'];
    $Q15_1 = $_POST['qPd15'];   /* add in */ 
    $Q15_2 = $_POST['qNd15'];
    $Q16_1 = $_POST['qPd16'];   /* add in */ 
    $Q16_2 = $_POST['qNd16'];
    $Q17_1 = $_POST['occcupa'];
    $Q17_2 = $_POST['befLockdown'];
    $Q17_3 = $_POST['befIll'];
    $Q17_4 = $_POST['employNow'];
    $addInfo1 = $_POST['famInput'];
    $addInfo2 = $_POST['exprOtherPro'];
    $addInfo3 = $_POST['clinicalNotes'];

    $sql = "INSERT INTO questionnaire (`PatientID`, `Agreement`, `HospitalAdmission`, `OtherHealthService`, `BreatheAtRest`, `BreathOnDress`, `BreathOnStairs`, `CoughThroatSensitivity`, `VoiceChange`, `NoisyBreathing`, `CoughThroatSeverity`, `EatingDifficulties`, `SwallowingSeverity`, `WeightLoss`, `FatigueEasily`, `NowFatigueSverity`, `PreCovidFatigueSeverity`, `BowelControl`, `BladderControl`, `ContinenceSeverity`, `NewPain`, `NowPainSeverity`, `PreCovidSeverity`, `Concentrating`, `ShortTermMemory`, `CognitionSeverity`, `NowAnxietySeverity`, `PreCovidAnxietySeverity`, `NowDepression`, `PreCovidDepression`, `UnwantedIllnessMemories`, `UnpleasantDreams`, `AvoidThoughts`, `StressSeverity`, `SelfHarm`, `CommunicationDifficulty`, `CommunicationSeverity`, `WalkingNow`, `WalkingPreCovid`, `NowUsualActivities`, `PreCovidUsualActivities`, `NowLookingAfterProblems`, `PreCovidLookingAfterProblems`, `NowHealth`, `PreCovidHealth`) 
    VALUES ('1222', '$agreement', '$openingQuestions', '$servicesUsed', '$Q1_2', '$Q1_4', '$Q1_6', '$Q2_1', '$Q2_2', '$Q2_3', '$Q2_4', '$Q3_1', '$Q3_2', '$Q3_3', '$Q4_1', '$Q4_2', '$Q5_1', '$Q5_2', '$Q5_3', '$Q6_1', '$Q6_3', '$Q7_1', '$Q7_2', '$Q7_3', '$Q8_2', '$Q9_2', '$Q10_1', '$Q10_2', '$Q10_3', '$Q10_4', '$Q10_5', '$Q11_1', '$Q11_2', '$Q12_2', '$Q13_2', '$Q14_2', '$Q15_2', '$Q16_2', '$Q17_1', '$Q17_2', '$Q17_3', '$Q17_4', '$addInfo1', '$addInfo2', '$addInfo3' )";

    if($conn->query($sql) === TRUE){
        header("Location: patientSurvey.php?success");
        exit();
    }
    else{
        echo "Error: " .$sql . "<br>" . $conn->error;
    }
    $conn->close();
}
else{
    header("Location: index.php");
    exit();
}

//, `Occupation`, `EmpStatPreLockdown`, `EmpStatPreIllness`, `EmpStatNow`, `FamilyPrespective`, `UnmentionedProblems`, `Other`