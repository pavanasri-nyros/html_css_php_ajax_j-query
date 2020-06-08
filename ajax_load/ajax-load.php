<?php
//connection
include "connect.php";

//query to select the columns from the table
$sql="SELECT * FROM php_form";

//executing the query 
$result = mysqli_query($con, $sql) or die("SQL query failed");

//storing the array values into the variable
$matchnames = array("pavana","sri");

//declaring the output variable to store the table in it
$output ="";

//mysqli_num_rows() function is an inbuilt function in PHP which is used to return the number of rows present in the result set.
if(mysqli_num_rows($result) > 0)
{
 $output .= '<table id="tblist" border="1" width="100%" cellspacing="0" cellpadding="10px">
            <tr>
            <th>Sno</th>
            <th>First-name</th>
            <th>Last-name</th>
            <th>Email</th>
            <th>DOB</th>
            <th>Age</th>
            <th width="90px">Edit</th>
            <th width="90px">Delete</th>
            </tr>';

    while($row = mysqli_fetch_assoc($result)){
         //taking the dob from the db
         $userdob = $row['dob']; 

         $dofb = new DateTime($userdob);

         //We need to compare the user's date of birth with today's date.
         $now = new DateTime();
         
         //Calculate the time difference between the two dates.
         $difference = $now->diff($dofb);
         
         
         //Get the difference in years, as we are looking for the user's age.
         $age = $difference->y;
        
         //for adding the style to the particular row based on the condition in if stmt
        if(in_array($row['fname'],$matchnames) || in_array($row['lname'],$matchnames))
        {
            $trStyle='background-color:green;';
        } else {
            $trStyle='background-color:;';
        } 
        //taking the column data from the db and displaying in the table
        $output .= "<tr style=\"$trStyle\">
                      <td>{$row["id"]}</td>
                      <td>{$row["fname"]}</td>
                      <td>{$row['lname']}</td>
                      <td>{$row['email']}</td>
                      <td>{$row['dob']}</td>
                      <td>$age</td>
                      <td><button class='edit-btn' data-eid='{$row['id']}'>Edit</button></td>
                      <td><button class='delete-btn' data-id='{$row['id']}'>Delete</button></td>
                      </tr>";
    }
    //closing tag for the table
    $output .= "</table>";

    //connection close
    mysqli_close($con);

    echo $output;
}
//if no records found in the db then the statment will displays
else{
    echo "no record";

}

?>
