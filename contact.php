<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "MDC");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$name=$_POST['name'];
$email=$_POST['email'];
$text=$_POST['txt_area'];


 
// Attempt insert query execution
$sql ="INSERT INTO reg_doctor (name,email,msg)  VALUES ('$name','$email','$text')";
if(mysqli_query($link, $sql)){
   echo "Message Send";  	
    
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>