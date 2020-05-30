<?php


$e=$_POST["Email"];
$p=$_POST["pswd"];

 $val = $_POST['login_type'];

$con = mysqli_connect("localhost", "root", "", "MDC");
 
// Check connection
if($con === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

if(isset($_POST['submit'])){

if ($val=="Patient"){
	
	$q="select email,password_pnt
	from 
		reg_patient
			where
				email='$e'
				and
				password_pnt='$p'
				";
	$result=$con->query($q);
	
	if ($result->num_rows > 0)
	{
		
	
	header("location: doc_list.php");
	
}
else
	{
		echo "Invalid User OR Password!!";
	}
}
}

else if(isset($_POST['submit'])){


if($val=="Doctor"){
	$q="select email,password_pnt
	from 
		reg_doctor
			where
				email='$e'
				and
				password_doc='$p'
				";
	$result=$con->query($q);
	
	if ($result->num_rows > 0)
	{
		
	
	header("location: pat_list.php");
	
}
else
	{
		echo "Invalid User OR Password!!";
	}

}


}







?>