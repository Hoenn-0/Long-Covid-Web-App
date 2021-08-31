<?php
session_start();
    require_once('dbconnection.php');
    if (!isset($_SESSION['userID'])){
        header('Location: index.php');
        exit();
      }
      else{
?>
<html>

	<head>
	<title>Patient Survey</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css\style.css">
    <link rel="icon" href="images/coronavirus.svg" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	</head>
	
		<?php include("nav.php") ?>
		
	<!-- Patient dashBoard -->
	<!-- <header>
		
	</header> -->
	
	<body style="background-color: rgb(203, 229, 250)">
    <div id="outside">
        <h2>COVID-19 Yorkshire Rehabilitation Screening (C19-YRS)</h2>
        <form id="survey-form" action="PostQuestionaire-inc.php" method="POST">        
                <fieldset>
                <h4><strong>We are getting in touch with people who have persistent health problems after having had a diagnosis of COVID-19 (coronavirus disease). The purpose of this questionnaire is to find out if you are experiencing problems related to your recent
                illness with COVID-19. Your responses will be recorded in your clinical notes. We will use this information to monitor your symptoms, offer treatments and assess response to treatment.</strong>
                <br><br>This questionnaire will take around 15 minutes. If there are any topics you don’t want to talk about you can chose not to respond.</h4>
                </fieldset>

                <fieldset>
                    <h2>Agreement</h2>
                    <div class="radio-toolbar">
                    <p>Do you consent for this information to be used for audit and research as well?</p>
                        <input type="radio" id="a-1y" name="agreement" value="yes">
                        <label for="a-1y">Yes</label>

                        <input type="radio" id="a-1n" name="agreement" value="no">
                        <label for="a-1n">No</label>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>Opening Questions</h2>
                    
                    <div class="radio-toolbar">
                        <p>Have you had any medical problems related to COVID-19 that needed hospital admission?</p>
                        <input type="radio" id="0-1y" name="covidHospAdmis" value="yes">
                        <label for="0-1y">Yes</label>

                        <input type="radio" id="0-1n" name="covidHospAdmis" value="no">
                        <label for="0-1n">No</label>

                        <p>Details:</p>
                        <textarea id="msg" name="hospitalmessage" rows="4" cols="50" placeholder="Enter Text Here"></textarea>

                        <p>Have you used any other health services to manage COVID-19 symptoms (e.g. your GP?)</p>
                        <input type="radio" id="0-2y" name="otherServ" value="yes">
                        <label for="0-2y">Yes</label>

                        <input type="radio" id="0-2n" name="otherServ" value="no">
                        <label for="0-2n">No</label>

                        <p>Details:</p>
                        <textarea id="msg" name="user_message" rows="4" cols="50" placeholder="Enter Text Here"></textarea>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>1. Breathlessness</h2>
                    <h4> Please respond to below questions to the best of your knowledge.
                    <br>‘Now’ refers to as you feel now/this week.
                    <br>“Pre-COVID” refers to how you were prior to contracting the illness.
                    <br> If you are unable to recall this, just state ‘dont know’
                    <br>(n/a if does not perform this activity) </h4>

                    <p>At rest?</p>
                    <div class="now">
                        <select name="qNd1_1" style="border-radius: 15px; margin-left: 5px;">
                                <?php   for($i=0; $i<=12; $i++) { 
                                    if($i<=10){
                                    echo "<option value='$i'>$i</option>";
                                    }
                                    elseif($i == 11){
                                    echo "<option value='$i'>N/A</option>";
                                    }
                                    elseif($i == 12){
                                    echo "<option value='$i'>Don't Know</option>";
                                    }

                                }
                                ?>  
                            </select>
                    </div>
                    <br>
                    <p>On dressing yourself?</p>
                    <div class="now">
                        <select name="qNd1_2" style="border-radius: 15px; margin-left: 5px;">
                                <?php   for($i=0; $i<=12; $i++) { 
                                    if($i<=10){
                                    echo "<option value='$i'>$i</option>";
                                    }
                                    elseif($i == 11){
                                    echo "<option value='$i'>N/A</option>";
                                    }
                                    elseif($i == 12){
                                    echo "<option value='$i'>Don't Know</option>";
                                    }

                                }
                                ?>  
                            </select>
                    </div>
                    <br>
                    <p>On walking up a flight of stairs? </p>
                    <div class="now">
                        <select name="qNd1_3" style="border-radius: 15px; margin-left: 5px;">
                                <?php   for($i=0; $i<=12; $i++) { 
                                    if($i<=10){
                                    echo "<option value='$i'>$i</option>";
                                    }
                                    elseif($i == 11){
                                    echo "<option value='$i'>N/A</option>";
                                    }
                                    elseif($i == 12){
                                    echo "<option value='$i'>Don't Know</option>";
                                    }
                                }
                                ?>  
                            </select>
                    </div>
                    <br>
                </fieldset>

                <fieldset>
                    <h2>2. Cough/ throat sensitivity/ voice change</h2>
                    
                    <div class="radio-toolbar">
                        <p>Are you still experiencing symptoms of:</p>
                        <p>Cough/ throat sensitivity</p>
                        <input type="radio" id="2-1y" name="cough" value="yes">
                        <label for="2-1y">Yes</label>

                        <input type="radio" id="2-1n" name="cough" value="no">
                        <label for="2-1n">No</label>
                        
                        <p>Voice change</p>
                        <input type="radio" id="2-2y" name="voice" value="yes">
                        <label for="2-2y">Yes</label>

                        <input type="radio" id="2-2n" name="voice" value="no">
                        <label for="2-2n">No</label>

                        <br>
                        <p>Noisy breathing</p>
                        <input type="radio" id="2-3y" name="noisy" value="yes">
                        <label for="2-3y">Yes</label>

                        <input type="radio" id="2-3n" name="noisy" value="no">
                        <label for="2-3n">No</label>
                    </div>
                    <p>Rate the current severity of this problem (0 being not present, 10 being severe and life disturbing)</p>
                        <select name="sq2" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                </fieldset>
               
                
                <fieldset>
                    <h2>3. Swallowing/ nutrition</h2>
                    
                    <div class="radio-toolbar">
                        <p>Are you still having difficulties eating, drinking or swallowing such as coughing, choking or having to avoiding any food or drinks?</p>
                        <input type="radio" id="3-1y" name="difDrink" value="yes">
                        <label for="3-1y">Yes</label>

                        <input type="radio" id="3-1n" name="difDrink" value="no">
                        <label for="3-1n">No</label>
                    </div>
                    <p>Current severity of swallowing problem (0 being no symptom, 10 being severe and life disturbing)</p>
                        <select name="sq3" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    <div class="radio-toolbar">
                        <p>Are you or your family concerned that you have ongoing weight loss or any ongoing nutritional concerns as a result of Covid-19?</p>
                        <input type="radio" id="3-2y" name="conWeig" value="yes">
                        <label for="3-2y">Yes</label>

                        <input type="radio" id="3-2n" name="conWeig" value="no">
                        <label for="3-2n">No</label>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>4. Fatigue</h2>
                    
                    <div class="radio-toolbar">
                        <p>Are you still fatigued more easily compared to before your illness?</p>
                        <input type="radio" id="4-1y" name="fatigue" value="yes">
                        <label for="4-1y">Yes</label>

                        <input type="radio" id="4-1n" name="fatigue" value="no">
                        <label for="4-1n">No</label>
                    </div>
                    <p>Rate the current severity of fatigue (0 being not present, 10 being severe and life disturbing)</p>
                    <div class="now">
                        <select name="qNd4" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>5. Continence</h2>
                    
                    <div class="radio-toolbar">
                        <p>Are you having any new problems with:</p>
                        <p>Controlling your bowel</p>
                        <input type="radio" id="5-1y" name="cntrBowel" value="yes">
                        <label for="5-1y">Yes</label>

                        <input type="radio" id="5-1n" name="cntrBowel" value="no">
                        <label for="5-1n">No</label>

                        <p>Controlling your bladder</p>
                        <input type="radio" id="5-2y" name="cntrBlad" value="yes">
                        <label for="5-2y">Yes</label>

                        <input type="radio" id="5-2n" name="cntrBlad" value="no">
                        <label for="5-2n">No</label>
                    </div>
                    <p>Rate the current severity of continence problem (0 being not present, 10 being severe and life disturbing)</p>
                    <select name="sq5" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                </fieldset>

                <fieldset>
                    <h2>6. Pain/ discomfort</h2>
                    
                    <div class="radio-toolbar">
                        <p>Have you got any pain that is new since contracting the illness?</p>
                        <input type="radio" id="6-1y" name="pain" value="yes">
                        <label for="6-1y">Yes</label>

                        <input type="radio" id="6-1n" name="pain" value="no">
                        <label for="6-1n">No</label>
                    </div>
                    <p>Rate the current severity of pain (0 being no pain or discomfort, 10 being severe and life disturbing pain)</p>
                    <div class="now">
                        <select name="qNd6" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>7. Cognition</h2>
                    
                    <div class="radio-toolbar">
                        <p>Have you had new or worsened difficulty with:</p>
                        <p>Concentrating?</p>
                        <input type="radio" id="7-1y" name="conce" value="yes">
                        <label for="7-1y">Yes</label>

                        <input type="radio" id="7-1n" name="conce" value="no">
                        <label for="7-1n">No</label>

                        <p>Short term memory?</p>
                        <input type="radio" id="7-2y" name="short" value="yes">
                        <label for="7-2y">Yes</label>

                        <input type="radio" id="7-2n" name="short" value="no">
                        <label for="7-2n">No</label>
                    </div>
                    <p>Rate the current severity of cognition problem (0 being not present, 10 being severe and life disturbing)</p>
                    <select name="sq7" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                </fieldset>

                <fieldset>
                    <h2>8. Anxiety</h2>
                        <p>On a 0-10 scale, how severe is the current anxiety you are experiencing?</p>
                        <p>0 means I am not anxious, 10 means I have extreme anxiety.</p>
                    <div class="now">
                        <select name="qNd8" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    </div>
                </fieldset>
                
                <fieldset>
                    <h2>9. Depression</h2>
                        <p>On a 0-10 scale, how severe is your current depression you are experiencing? </p>
                        <p>0 means I am not depressed, 10 means I have extreme depression</p>
                    <div class="now"></div>
                        <select name="qNd9" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    
                </fieldset>
                <fieldset>
                    <h2>10. PTSD screen</h2>
                    <div class="radio-toolbar">
                        <p>a) Do you still have any unwanted memories of your illness or hospital admission whilst you were awake, so not counting dreams?</p>
                        <input type="radio" id="10-1y" name="ptsdA" value="yes">
                        <label for="10-1y">Yes</label>

                        <input type="radio" id="10-1n" name="ptsdA" value="no">
                        <label for="10-1n">No</label>

                        <p>b) Do you still have any unpleasant dreams about your illness or hospital admission?</p>
                        <input type="radio" id="10-2y" name="ptsdB" value="yes">
                        <label for="10-2y">Yes</label>

                        <input type="radio" id="10-2n" name="ptsdB" value="no">
                        <label for="10-2n">No</label>

                        <p>c) Do you still avoid thoughts or feelings about your illness or hospital admission?</p>
                        <input type="radio" id="10-3y" name="ptsdC" value="yes">
                        <label for="10-3y">Yes</label>

                        <input type="radio" id="10-3n" name="ptsdC" value="no">
                        <label for="10-3n">No</label>
                    </div>
                    <p>Rate the current severity of these stress problems (0 being not present, 10 being severe and life disturbing)</p>
                        <select name="sq10" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    <div class="radio-toolbar">
                        <p>Are you currently having thoughts about harming yourself in any way?</p>
                        <input type="radio" id="10-4y" name="harm" value="yes">
                        <label for="10-4y">Yes</label>

                        <input type="radio" id="10-4n" name="harm" value="no">
                        <label for="10-4n">No</label>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>11. Communication</h2>
                    
                    <div class="radio-toolbar">
                        <p>Since your illness have you had new or worsened difficulty with communication/word finding difficulty/ understanding others?</p>
                        <input type="radio" id="11-1y" name="comms" value="yes">
                        <label for="11-1y">Yes</label>

                        <input type="radio" id="11-1n" name="comms" value="no">
                        <label for="11-1n">No</label>
                    </div>
                    <p>Rate the current severity of communication problem (0 being not present, 10 being severe and life disturbing)</p>
                        <select name="sq11" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                </fieldset>

                <fieldset>
                    <h2>12. Mobility</h2>
                    <div class="radio-toolbar">
                        <p>On a 0-10 scale, how severe are any problems you have in walking about?<br>Or moving about if normally mobilise using aids</p>
                        <p>0 means no problems, 10 means severe or completely unable to walk about.</p>
                    </div>
                    <div class="now">
                        <select name="qNd12" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>13. Personal-Care</h2>
                    
                    <div class="radio-toolbar">
                        <p>On a 0-10 scale, how severe are any problems you have in personal cares such as using toilet, washing and dressing yourself?</p>
                        <p>0 means no problems, 10 means completely unable to do or fully dependent on others to help.</p>
                    </div>
                    <div class="now">
                        <select name="qNd13" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>14. Other Activities of Daily Living</h2>
                    
                    <div class="radio-toolbar">
                        <p>On a 0-10 scale, how severe are any problems you have in do your usual activities, such as your household work, leisure activities, work, study or shopping?</p>
                        <p>0 means no problems, 10 means completely unable to do or fully dependent on others to help.</p>
                    </div>
                    <div class="now">
                        <select name="qNd14" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>15. Social role</h2>
                    
                    <div class="radio-toolbar">
                        <p>On a 0-10 scale, how severe are any problems you have in looking after loved ones and leisure activities that are related to your illness (and not the social distancing/lockdown measures)?</p>
                        <p>0 means no problems, 10 means completely unable to do</p>
                    </div>
                    <div class="now">
                        <select name="qNd15" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>16. Overall Health</h2>
                    
                    <div class="radio-toolbar">
                        <p>How good or bad is your health overall? 10 means the best health you can imagine.
                        <p>0 means the worst health you can imagine.</p>
                    </div>
                    <div class="now">
                        <select name="qNd16" style="border-radius: 15px">
                            <?php   for($i=0; $i<=10; $i++) { 
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>  
                        </select>
                    </div>
                </fieldset>

                <fieldset>
                    <h2>17. Employment</h2>
                    
                    <p>What is your employment situation and has your illness affected your ability to do your usual work?</p>
                <div>
                    <p>Occupation:</p>
                    <label id="occupation" for="opt1"></label>
                    <input type="text" required id="finalQ" name="occcupa" placeholder="Occupation">   
                </div>
                <div>
                <p>Employment status now:</p>                
                    <label id="occupation" for="opt1"></label>
                    <select style="width: 100%; padding: 12px 20px; margin: 8px 0; border: 2px solid #1b377e; border-radius: 4px;" name="EmpStat" required id="finalQ" placeholder="Current Status">
                        <option value="" selected="selected" disabled="disabled">Select</option>
                        <option value="Employed">Employed</option>
                        <option value="Unemployed">Unemployed</option>
                        <option value="Self-Employed">Self-Employed</option>
                    </select>
                    <!-- <input type="text" required id="finalQ" name="employNow" placeholder="Current Status">    -->
                </div>
                </fieldset>

                <fieldset>
                <h2>Additional Information</h2>
                <div>
                    <p>Do you think your family or carer would have anything to add from their perspective? </p>
                    <textarea id="msg" name="famInput" rows="4" cols="50" placeholder="Enter Text Here"></textarea>
                    <p>Are you experiencing any other new problems since your illness we haven’t mentioned?</p>
                    <textarea id="msg" name="exprOtherPro" rows="4" cols="50" placeholder="Enter Text Here"></textarea>
                    <p>Any other discussion (clinical notes):</p>
                    <textarea id="msg" name="clinicalNotes" rows="4" cols="50" placeholder="Enter Text Here"></textarea>
                </div>
                </fieldset>

            <div id="submitbutton">
        <button type="submit" id="submit" name="survey-submit">Submit Answers</button>   </div>
        </form>

    </div>
	</body>

		<?php include("footer.php");
        
                        }
                        ?>
	

</html> 