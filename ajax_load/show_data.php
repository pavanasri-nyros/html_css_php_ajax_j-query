<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
  <table id="main" border="0" cellspacing="0">
    <tr>
       <td id="header">
       <h1>Load data from DB with ajax</h1>
       </td>
    </tr>
    <tr>
        <td id="table-load">
           <input type="submit" id="submit" class="button" value="Load Data">

        </td>
   </tr>
    <tr>
       <td id="table-data">   
    </td>
    </tr>
  </table>
  <div id="error-message"></div>
  <div id="success-message"></div>
  <div id="modal">
    <div id="modal-form">
      <h2>Edit Form</h2>
      <table cellpadding="10px" width="100%">
        <!--displayes the load-update-form.php -->
      </table>
      <div id="close-btn">X</div>
    </div>
  </div>
  <script src="js/script.js"></script>
</body>
</html>