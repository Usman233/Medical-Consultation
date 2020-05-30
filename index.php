<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Medical Consultation</title>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/fontawesome.min.css" />
		<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styless.css" rel="stylesheet" />
		<style>
		#mainNav{
	padding:0;
	margin:0;}
	
	#particles-js{
	background-image:url("images/homePic.jpg");
	background-repeat:no-repeat;
	background-size:cover;
	background-position:center;
	position:relative;
    height:100%;
    max-width:100%;
	background-attachment: fixed;
	}
	
	.masthead{
	padding:0px;
	width:100%;
	}
	
	.minDiv{
	position:absolute;
	 margin: auto;
	 top:0;
	 right:0;
	 left:0;
	 bottom:0;
  max-width: 500px;
  height: 450px;
  background-image: url("images/2.jpg");
  color:#ffffff;
  border-radius: 3px;
  opacity:0.9;
  border:blue 2px solid;
  border-radius:5px;
  margin-top:80px;
  
  }
	</style>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="images/Medical.png" height="60px" width="60px"></a>
				<button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#homeSection"><i class="fas fa-home"></i></a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#aboutSection">About</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#servicesSection">Services</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contactSection">Contact</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Reg_Doc.php" >Signup Doctor</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Reg_Pat.php" >Signup Patient</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Login.php" >Login </a></li>
						
						
                    </ul>
                </div>
            </div>
        </nav>
		<!-- Masthead-->
		<section class="page-section about" id="homeSection">
        <header class="masthead bg-primary text-white text-center">
			<div id="particles-js"></div>
			<div class="minDiv">
			<h1>Find and book the best doctors in Pakistan</h1>
		<h3>Video consultation is also available</h3>
           <!-- <div class="Boxtext">
				<h1 class="text">Hi Hello</h1>-->
                <!-- Icon Divider-->
                <!--<div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>-->
                <!-- Masthead Subheading-->
				<!--<p class="textP masthead-subheading font-weight-light mb-0">ARE - YOU - READY</p>
				<a href="#" class="btn-liquid">
					<span class="inner">Get Start Now</span>
			</a>-->
			<form action="../Uni_project/search.php" method="Post">
    <div class="form-group">
      <label for="uname">City name:</label>
      <input type="text" class="form-control input-sm" id="uname" placeholder="Enter city name" name="uname" width ="11px" required>
      <!--<div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>-->
    </div>
    <div class="form-group">
      <label for="pwd">Search for doctors:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Search for doctors" name="pswd" required>
     <!-- <div class="valid-feedback">Valid.</div>-->
      <!--<div class="invalid-feedback">Please fill out this field.</div>-->
    </div>
    
    <button type="submit" class="btn btn-primary">Search</button>
  </form>
            </div></div>
        </header> </section>
        <!-- About Section-->
        <section class="page-section about" id="aboutSection">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">About US</h2>
                 <!-- Icon Divider-->
				 <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Grid Items-->
                <div class="row">
					 <!-- ABOUT US -->
<section class="aboutSection">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>About Us</h3>
                <hr>
                <p>We are here to provide you the best Medical consultation services.You can access us through online and contact with the best doctors in Pakistan.
                     You can make appoinment with them and also contact them with video consultation. </p>
            </div>
            <div class="col-md-6" id="process1">
				<div class="box"></div>
				<div class="box"></div>
            </div>
        </div>
    </div>
</section>



                </div>
            </div>
        </section>
        <!-- About Section-->
        <section class="page-section bg-primary text-white mb-0" id="servicesSection">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Our Services</h2>
                 <!-- Icon Divider-->
				 <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Section Content-->
                <div class="row">

					<ul class="grid cs-style-4">
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med1.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Eye Specialist</h4>
									<p>A lot of eye specialist available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
									
								</figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med2.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Surgeon</h4>
									<p>A lot of surgeon available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
									
								</figcaption>
							</figure>
						</li>
						
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med4.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>ENT Specialist</h4>
									<p>A lot of ENT specialist available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
									
								</figcaption>
							</figure>
						</li>
						
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med5.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Orthopedic surdeon</h4>
									<p>A lot of Oryhepedic Surgen available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
									
								</figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med6.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Child Specialist</h4>
									<p>A lot of Child specialist available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
									
								</figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med7.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Scin Specialist</h4>
									<p>A lot of Scin specialist available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website./p>
									
								</figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med8.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Gynacologist</h4>
									<p>A lot of Gynacologist available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website..</p>
									
								</figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med9.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Dentist</h4>
									<p>A lot of Dentist available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
									
								</figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<div class="main-wrap"><img src="images/Med10.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Diagnostics</h4>
									<p>A lot of Diagnostics available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
									
								</figcaption>
							</figure>
						</li>
						<li>
						<figure>
						<div class="main-wrap"><img src="images/Med3.png" class="img05"><div class="spanIt" style="color:black">Lorem Ipsum</div></div>
								<figcaption>
									<h4>Diabetes Specialist</h4>
									<p>A lot of eye specialist available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
									
								</figcaption>
							</figure>
							
					</ul>

                    
                </div>
                
            </div>
		</section>
		


		
        <!-- Contact Section-->
        <section class="page-section" id="contactSection">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact Us</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row">
                    <div class="col-lg-12 mx-auto">
						
						<section id="hire">
							<form>
								  <div class="field name-box">
										<input type="text" id="name" placeholder="Who Are You?"/ name="name">
										<label for="name">Name</label>
										<span class="ss-icon">check</span>
								  </div>
						
								  <div class="field email-box">
										<input type="text" id="email" placeholder="name@email.com"/ name="email">
										<label for="email">Email</label>
										<span class="ss-icon">check</span>
								  </div>
						
								  <div class="field msg-box">
										<textarea id="msg" rows="4" placeholder="Your message goes here..."/ name="txt_area"></textarea>
										<label for="msg">Msg</label>
										<span class="ss-icon">check</span>
								  </div>
						
								  <input class="button" type="submit" value="Send" />
						  </form>
						</section>
						
                    </div>
                </div>
            </div>
		</section>
		
		

        <!-- Footer-->
        <footer class="footer text-center">
            <div class="container">
                <div class="row">
					<!-- Footer About Text-->
                    <div class="col-lg-4">
                        <h4 class="text-uppercase mb-4 text-left">About Medical consultation</h4>
                        <p class="lead mb-4">A lot of  specialist available that give you satisfaction in their work.You can also contact then personally through their mail accounts available in website.</p>
						
                        <div class="social-icons"><a class="btn btn-outline-light btn-social mx-1" href="#"><i class="fab fa-fw fa-facebook-f"></i></a><a class="btn btn-outline-light btn-social mx-1" href="#"><i class="fab fa-fw fa-twitter"></i></a><a class="btn btn-outline-light btn-social mx-1" href="#"><i class="fab fa-fw fa-linkedin-in"></i></a><a class="btn btn-outline-light btn-social mx-1" href="#"><i class="fab fa-fw fa-dribbble"></i></a></div>
					</div>
                    <!-- Footer Location-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4 text-left">Contact</h4>
						<p class="lead mb-1"><i class="fas fa-map-marker-alt"></i> block no 5 <br />rivand road Lahore</p>
						<p class="lead mb-1"><i class="far fa-envelope-open"></i> abc@example.com</p>
						<p class="lead mb-0"><i class="fas fa-mobile"></i> 6344856476</p>

                    </div>
                    <!-- Footer Social Icons-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3088.4542957887343!2d-92.34491098477879!3d39.27794667951372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87dcd635396bd9b3%3A0x476c81f4690ccdf8!2s211-207%20Oklahoma%20Ave%2C%20Clark%2C%20MO%2065243%2C%20USA!5e0!3m2!1sen!2sin!4v1588424012640!5m2!1sen!2sin" width="400" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                    
                </div>
            </div>
        </footer>
        <!-- Copyright Section-->
        <section class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright © Your Website 2020</small></div>
        </section>
        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
        <div class="scroll-to-top d-lg-none position-fixed">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a>
        </div>
      
        
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
		<script src="js/scripts.js"></script>
		<!-- scripts -->
		<script src="js/particles.js"></script>
		<script src="js/app.js"></script>
		<script src="js/modernizr.custom.js"></script>
	




 

    </body>
</html>
