<html>
<head>
	<title>
		Data Disply
	</title>	
<body>


<p align="center" style="color:blue;font-weight:bold;font-size:50px" > All Record </p>
<form action="/list/check.php" method="POST">
<table align="center" height="10%" width="60%" cellpadding="12px" cellspacing="0px" border="1px solid black" style="margin-top:%">
<tr>
	
	<td>
	 Name
	</td>
	<td>
	Email Address
	</td>
	
	
	<td>
	City
	</td>
	<td>
	Specialization
	</td>
	<td colspan="2">
	    <lable style="color:red;font-weight:bold;font-size:28px">   Action </lable>
	</td>
</tr>
   <?php
  $doc=$_POST['pswd'];
   $city=$_POST['uname'];
		$con=mysqli_connect('localhost','root','','MDC');
		$q="select name,email,city,specialization from reg_doctor where city='$city' and specialization='$doc'";
		$con->query($q);
		$query=mysqli_query($con,$q);
		WHILE ($row =mysqli_fetch_array($query)){
		
		?>
		<tr>
		
		<td>
			<?php echo $row['name']; ?>
			</td>
						<td>
			<?php echo $row['email']; ?>
			</td>
						
						
						<td>
			<?php echo $row['city']; ?>
			</td>
			<td>
			<?php echo $row['specialization']; ?>
			</td>
			<td>
			
			<a href="#">Msg </a> 
			</td>
			<td>
			
			<a href="#"> Call</a>
			
			</td>
</tr>
		<?php
		}
?>




</table>

</form>
</body>
</html>		
			
		