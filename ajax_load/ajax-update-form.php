<?php
//getting the values from the ajax (from save-update-from in script.js file) and storing in the variables
$user_id = $_POST['id'];
$firstName = $_POST['firstname'];
$lastName = $_POST['lastname'];
$email = $_POST['email'];
$dob =$_POST['dob'];

//connection to db
include "connect.php";

//Update command set to the variables based on the id
$sql="UPDATE php_form SET fname = '{$firstName}', lname = '{$lastName}', email='{$email}', dob='{$dob}' WHERE id = {$user_id}";

//execute the query
if(mysqli_query($con, $sql)){
    echo 1;
}
else{
    echo 0;
}

?>