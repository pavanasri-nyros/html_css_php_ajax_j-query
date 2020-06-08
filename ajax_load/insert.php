<?php


include "connect.php";

$fname = $_POST['fname'];
$lname= $_POST['lname'];
$email = $_POST['email'];
$dob = $_POST['dob'];


//Create a DateTime object using the user's date of birth.
$dofb = new DateTime($dob);

//We need to compare the user's date of birth with today's date.
$now = new DateTime();

//Calculate the time difference between the two dates.
$difference = $now->diff($dofb);


//Get the difference in years, as we are looking for the user's age.
$age = $difference->y;


$sql = "INSERT INTO `phpform`.`php_form` (`fname`, `lname`, `email`, `dob`,`age`) VALUES ('$fname', '$lname','$email', '$dob', '$age')";


//Execute query
if($con->query($sql))
{
    echo "Data saved " ;
}

else{

   echo "ERROR: $sql <br> $con->error";

}
?>