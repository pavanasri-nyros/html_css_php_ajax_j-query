<?php

//getting the value from the ajax POST request(from show-modal-box in script.js)
$user_id = $_POST["id"];

//connection to the db
include "connect.php";

//selecting the columns based on the id value
$sql="SELECT * FROM php_form WHERE id = {$user_id}" ;

//execute the query
$result = mysqli_query($con, $sql) or die("SQL query failed");

//declaring the variable 
$output ="";


if(mysqli_num_rows($result) > 0)
{
 $output .= '';

    while($row = mysqli_fetch_assoc($result)){
        

        $output .= "<tr>
        <td>First Name</td>
        <td><input type='text' id='edit-fname' value='{$row["fname"]}'>
        <input type='text' id='edit-id' hidden value='{$row["id"]}'></td>
      </tr>
      <tr>
        <td>Last Name</td>
        <td><input type='text' id='edit-lname'  value='{$row["lname"]}'></td>
      </tr>
      <tr>
        <td>Email</td>
        <td><input type='text' id='edit-email'  value='{$row["email"]}'></td>
      </tr>
      <tr>
        <td>DoB</td>
        <td><input type='date' id='edit-dob'  value='{$row["dob"]}'></td>
      </tr>
     
      <tr>
        <td></td>
        <td><input type='submit' id='edit-submit' value='save'></td>
      </tr>
     ";
    }
    mysqli_close($con);
    echo $output;
}
else{
    echo "no record";

}


?>