<?php
session_start();

if(isset($_POST['survey-submit'])){
    require 'dbconnection.php';

    //patient id
    $PatientID = $_SESSION['userID'];

    //agreement
    $agreement = $_POST['agreement'];

    //OQ hosp addmision
    $openingQuestions = $_POST['covidHospAdmis'];

    //Opening-Question Hospital Admission
    $messageHospital = $_POST['hospitalmessage'];

    //OQ other health service
    $servicesUsed = $_POST['otherServ'];

    //details of health service
    $messageServiceUsed = $_POST['user_message'];

    //Breathlessness
        //at rest
    $Q1_2 = $_POST['qNd1_1']; 
        //on dress
    $Q1_4 = $_POST['qNd1_2']; 
        //on stairs   
    
    $Q1_6 = $_POST['qNd1_3']; 
    //Cough/ throat sensitivity/ voice change
        //cough/throat
    $Q2_1 = $_POST['cough'];
        //voice change
    $Q2_2 = $_POST['voice'];
        //noisy breathing
    $Q2_3 = $_POST['noisy'];
        //cough/throat severity
    $Q2_4 = $_POST['sq2'];
    
    //3. Swallowing/ nutrition
        //eating difficulties
    $Q3_1 = $_POST['difDrink'];
        //swallowing severity
    $Q3_2 = $_POST['sq3'];
        //family concerns on weightloss
    $Q3_3 = $_POST['conWeig'];
    
    //4. Fatigue
        //fatigue yes/no easily
    $Q4_1 = $_POST['fatigue'];
        //fatigue post covid
    $Q4_3 = $_POST['qNd4'];

    // Continence
        //bowel contractions
    $Q5_1 = $_POST['cntrBowel'];
        //bladder control
    $Q5_2 = $_POST['cntrBlad'];
        //severity of continence
    $Q5_3 = $_POST['sq5'];

    // Pain/ discomfort
        //new pain
    $Q6_1 = $_POST['pain'];
        //now covid pain severity
    $Q6_3 = $_POST['qNd6'];

    // Cognition
        //concentration
    $Q7_1 = $_POST['conce'];
        //short term
    $Q7_2 = $_POST['short'];
        //severity of cognition
    $Q7_3 = $_POST['sq7'];

    // Anxiety   
        //anxiety now
    $Q8_2 = $_POST['qNd8'];

    // Depression
        //now depression
    $Q9_2 = $_POST['qNd9'];

    // PTSD screen
        //unwanted memories
    $Q10_1 = $_POST['ptsdA'];
        //unpleasant dreams
    $Q10_2 = $_POST['ptsdB'];
        //thought avoiding
    $Q10_3 = $_POST['ptsdC'];
        //severity of stress
    $Q10_4 = $_POST['sq10'];
        //self harm
    $Q10_5 = $_POST['harm'];

    // Communication
        //communication worse
    $Q11_1 = $_POST['comms'];
        //severity of communication
    $Q11_2 = $_POST['sq11'];

    // Mobility
        // severity now
    $Q12_2 = $_POST['qNd12'];

    // Personal-Care
        //now covid severity
    $Q13_2 = $_POST['qNd13'];

    // Other Activities of Daily Living
        //now covid severity
    $Q14_2 = $_POST['qNd14'];

    // Social role
        //now covid severity
    $Q15_2 = $_POST['qNd15'];

    // Overall Health
        //now covid severity
    $Q16_2 = $_POST['qNd16'];

    // Employment
        //occupation
    $Q17_1 = $_POST['occcupa'];
        //employment status now
    $Q17_4 = $_POST['employNow'];
    //additional info
        //family/carer perspective
    $addInfo1 = $_POST['famInput'];
        //unmentioned new problems
    $addInfo2 = $_POST['exprOtherPro'];
        //other
    $addInfo3 = $_POST['clinicalNotes'];
    

    $sql = "INSERT INTO postcovidq (PatientID, QDate, Agreement, HospAd, HospAdDet, OtherSer, OtherSerDet, 
    BreathAR, BreathOD, BreathOS, 
    CoughThroatSen, VoiceChange, NoisyBreathing, CTVSev, 
    DiffEat ,SwallowSev, WeightLoss, 
    Fatigue, FatigueSev, 
    BowelControl, BladderControl, ContinenceSev, 
    Pain, PainSev, 
    Concentrating, STM, CognitionSev, 
    Anxiety, Depression, 
    UnwantedMem, UnpleasantDream, AvoidThoughts, StressSev, SelfHarm, 
    Communication, CommunicationSev, 
    Mobility, PersonalCare,DailyLiving, SocialRole, 
    Health , 
    Occupation, EmpStatNow, OtherPerspective, NewProblems, Other) 
    VALUES ($PatientID, CURDATE() , '$agreement', '$openingQuestions', '$messageHospital', '$servicesUsed', '$messageServiceUsed', 
    '$Q1_2','$Q1_4', '$Q1_6',
    '$Q2_1', '$Q2_2', '$Q2_3','$Q2_4', 
    '$Q3_1', '$Q3_2', '$Q3_3', 
    '$Q4_1', '$Q4_3',
    '$Q5_1', '$Q5_2', '$Q5_3', 
    '$Q6_1', '$Q6_3',
    '$Q7_1', '$Q7_2', '$Q7_3', 
    '$Q8_2',
    '$Q9_2',
    '$Q10_1', '$Q10_2', '$Q10_3', '$Q10_4', '$Q10_5', 
    '$Q11_1', '$Q11_2', 
    '$Q12_2',
    '$Q13_2', 
    '$Q14_2',
    '$Q15_2',
    '$Q16_2',
    '$Q17_1', '$Q17_4', 
    '$addInfo1', '$addInfo2', '$addInfo3' )";

    if($conn->query($sql) === TRUE){
        header("Location: PostQuestionnaire.php?success");
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

