<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "MDC");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$name=$_POST['uname'];
$email=$_POST['Email'];
$password=$_POST['pswd'];

$sp=$_POST['type'];
$city=$_POST['city'];
 
// Attempt insert query execution
$sql ="INSERT INTO reg_patient(name,email,password_pnt,city,disease)  VALUES ('$name','$email','$password','$city','$sp')";
if(mysqli_query($link, $sql)){
   header("location: doc_list.php");    	
    
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>