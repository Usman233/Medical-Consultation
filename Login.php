<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style>
*{margin:0px; padding:5px; font-family:Helvetica, Arial, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password],input[type=email] {
    width: 90%;
    padding: 12px 20px;
    margin: 8px 26px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	font-size:16px;
}
/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
.sample {
    width: 200px;
	height:200px;
    border-radius: 50%;
}
/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 26px;
    border: none;
    cursor: pointer;
    width: 90%;
	font-size:20px;
}
button:hover {
    opacity: 0.8;
}

/* The Modal (background) */
.modal {
	display:none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.4);
}

/* Modal Content Box */
.modal-content {
    background-color: #fefefe;
    margin: 4% auto 15% auto;
    border: 1px solid #888;
    width: 40%; 
	padding-bottom: 30px;
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.close:hover,.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    animation: zoom 0.6s
}
@keyframes zoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}





	
</style>


</head>
<body onload="document.getElementById('modal-wrapper').style.display='block'" >
<a href="index.php"  style="width:200px; margin-top:200px; margin-left:160px;">
Go Back</a>
<h1 style="text-align:center; font-size:50px; color:#fff"> Login Form</h1>


<div id="modal-wrapper" class="modal">
  
  <form class="modal-content animate" action="../Uni_project/log.php" method="Post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/1.png" alt="sample" class="sample">
      <h1 style="text-align:center">Login Form</h1>
    </div>

    <div class="container">
      
	  Email:<input type="email" placeholder="abc@gmail.com" name="Email" required><br>
      Password:<input type="password" placeholder="Enter Password" name="pswd" required> <br> 
      <select name="login_type">
<option value="Patient">Patient</option>
<option value="Doctor">Doctor</option></select>
	 <button type="submit" name="submit">Login</button>
	  </form>
	 
      
    </div>
    
  
  
</div>



</body>
</html>


