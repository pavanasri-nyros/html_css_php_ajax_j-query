<?php

//getting the value from the ajax POST request(from delete record in script.js file)
$user_id = $_POST['id'];

//connection to the db
include "connect.php";

//Delete command based on the id 
$sql="DELETE FROM php_form WHERE id = {$user_id}";

//execute the query
if(mysqli_query($con, $sql)){
    echo 1;
}
else{
    echo 0;
}

?>