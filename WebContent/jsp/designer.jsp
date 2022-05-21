<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Pink Elixir </title>
<link href="/e-fashion/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="/e-fashion/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<!-- js -->
<script src="/e-fashion/js/jquery-1.11.1.min.js"></script> 
<script src="/e-fashion/js/modernizr.custom.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="/e-fashion/js/move-top.js"></script>
<script type="text/javascript" src="/e-fashion/js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smoth-scrolling-->
</head>
<body>
	<!--banner-->
	<div class="banner">					
		<div class="baner-text">
			<h1><a href="/e-fashion/jsp/index.jsp">Pink <span>Elixir</span></a></h1>
			<h4>Go forth & be fabulous!</h4>
			<!-- banner-text Slider starts Here -->
			<script src="/e-fashion/js/responsiveslides.min.js"></script>
				<script>
				// You can also use "$(window).load(function() {"
					$(function () {
					// Slideshow 3
						$("#slider3").responsiveSlides({
						auto: true,
						pager:true,
						nav:false,
						speed: 500,
						namespace: "callbacks",
						before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
						}
					});	
				});
			</script>
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>					
						<h3>Designer</h3>
						<p> " A designer is a person who designs a designer is an agent that "specifies the structural properties of a design object."</p>
					</li>
					<li>					
						<h3>Modelling</h3>
						<p> A model is a person with a role either to promote, display or advertise commercial products.</p>
					</li>
					<li>					
						<h3>Latest Fashions</h3>
						<p> Fashion is a popular style or practice, especially in clothing, footwear, accessories, makeup, hairstyle and body.</p>
					</li>
					<li>					
						<h3>Personality</h3>
						<p>Personality is defined as the set of habitual behaviors, cognitions and emotional patterns that evolve 
						from biological.</p>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--navigation-->
	<div class="top-nav">
		<span class="menu">MENU</span>		
		<ul class="nav1 cl-effect-11">
			<li><a href="/e-fashion/jsp/index.jsp" data-hover="Home">Home</a></li>
			
			<li class="dropdown menu__item">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="Institute" role="button" aria-haspopup="true" aria-expanded="false">Institute <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="/e-fashion/jsp/designer.jsp" >Designing Institute</a></li>
										<li><a href="/e-fashion/jsp/model.jsp" >Modelling Institute</a></li>
										<li><a href="/e-fashion/jsp/beauty.jsp">Beauty Institute</a></li>
										<li><a href="/e-fashion/jsp/fpersonality.jsp" >Famous Personality</a></li>
									</ul>
								</li>
			
			
							
			<li><a href="/e-fashion/jsp/news.jsp" data-hover="News">News</a></li>
		
				
			<li><a href="/e-fashion/jsp/login.jsp" data-hover="Register/Login">Register/Login</a></li>
			<li><a href="/e-fashion/jsp/registration.jsp" data-hover="Register">Register</a></li>
			<li><a href="/e-fashion/jsp/contact.jsp" data-hover="Contact">Contact Us</a></li>
		</ul>				
		<!-- script-for-menu -->
		 <script>
		   $( "span.menu" ).click(function() {
			 $( "ul.nav1" ).slideToggle( 300, function() {
			 // Animation complete.
			  });
			 });
		</script>
		<!-- /script-for-menu -->
	</div>
	<!--//navigation-->
	<!--banner-bottom-->
	
	<!--//banner-bottom-->
	<!--popular-->
<div class="about">
		<div class="container">			
			<div class="about-info">
			<h3>Designing Institute</h3>
			<hr>
				<div class="col-md-4 about-grids">	
					<h3>1. NATIONAL INSTITUTE OF FASHION TECHNOLOGY, DELHI</h3>
					<img src="/e-fashion/images/nift.jpg" alt=""/>
					<h5>NATIONAL INSTITUTE OF FASHION TECHNOLOGY, DELHI</h5>
					<p>National Institute of Fashion Technology (NIFT) is a 
					group of fashion colleges in India. It was established in 1986 
					under the aegis of the Ministry of Textiles, Government of India [1] and 
					is an institution of design, management and technology for the international fashion business.</p>
					
				</div>
				<div class="col-md-4 about-grids">
					<h3> About NIFT </h3>
					
					<div class="histry">						
						<h4>Curriculum</h4>
						
						<p>NIFT offers four-year undergraduate, as well as two-year post-graduate, programmes
						 in the areas of design, management, and technology. In order to secure admission in
						  Bachelor of Design (B.Des) as well as Master of Design (M.Des) programmes offered 
						  at NIFT, students need to take two written admission tests called the Creative Ability
						   Test (CAT) and the General Ability Test (GAT). </p>
					</div>
					<div class="histry">						
						<h4>Ranking</h4>
						
						<p>In the 2017 CEOWORLD magazine ranking of the best fashion schools in the world,
						 National Institute of Fashion Technology was ranked 19th, just behind Manchester School of Art. </p>
					</div>
				</div>
				<div class="col-md-4 about-grids">
					<h3>Branches</h3>
					<h5>National Institute of Fashion Technology (NIFT) is a 
					group of fashion colleges in India.</h5>
					<p>NIFT currently has 16 campuses: its main campus in :-</p>
					<div class="news-grids">
						<ul>
							<li><a href="#">New Delhi</a></li>
							<li><a href="#">Bangalore</a></li>
							<li><a href="#">Bhopal</a></li>
							<li><a href="#">Chennai</a></li>
							<li><a href="#">Hyderabad</a></li>
							<li><a href="#">Kolkata</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
			<hr>
			<div class="about-info">
				<div class="col-md-4 about-grids">	
					<h3>SYMBIOSIS INSTITUTE OF DESIGN, PUNE </h3>
					<img src="/e-fashion/images/s.jpg" alt=""/>
					<h5>SYMBIOSIS INSTITUTE OF DESIGN, PUNE</h5>
					<p>Established in 2006, Symbiosis Institute of Design (SID), Pune is spread over 
					an area of 80,000 sq ft. The official website informs that, “The campus of Symbiosis 
					Institute of Design at Viman Nagar houses state of the art design studios, laboratories, 
					workshops, IT infrastructure, rapid prototyping lab, well-equipped class rooms, library, 
					exhibition areas, seminar hall, conference hall etc.</p>
					
				</div>
				<div class="col-md-4 about-grids">
					<h3> About SID </h3>
					<div class="histry">						
				
						
						<p>Symbiosis is one of India’s leading educational Institutions imparting quality
						 education for over 38 years. A family of 35 academic institutions spread across 
						 20 campuses in and around Pune, sister city to Mumbai – India’s commercial capital
						 , it is host to over 27,000 Indian and International students on campus and over
						  1,00,000 students off campus.Symbiosis International University (SIU) is a private 
						  co-educational, multi-institutional University located in Pune, Maharashtra, India.
						   It has been given official recognition by the UGC and the AICTE. The Indian NAAC has
						    conferred an ‘A’ grade to the University. SIU is part of the Symbiosis Society which 
						    is its managing body. </p>
					</div>
					
				</div>
				<div class="col-md-4 about-grids">
					<h3>Courses Offer</h3>
					
					<div class="news-grids">
						<ul>
							<li><a href="#">BDes Communication Design</a></li>
							<li><a href="#">BDes Fashion Design</a></li>
							<li><a href="#">BDes Fashion Communication</a></li>
							<li><a href="#">BDes Industrial Design</a></li>
							<li><a href="#">BDes Textile Design</a></li>
							
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<hr>
			
			<div class="about-info">
				<div class="col-md-4 about-grids">	
					<h3>3.AMITY SCHOOL OF FASHION TECHNOLOGY </h3>
					<img src="/e-fashion/images/amity.jpg" alt=""/>
					<h5>AMITY SCHOOL OF FASHION TECHNOLOGY</h5>
					<p>Amity School of Fashion Technology offers professional education in the field of Design, 
						Technology & Management of fashion, textile and apparel industry.</p>
			<a href="/e-fashion/jsp/a.jsp" class="btn1 btn-1 btn-1e">Read More</a>
				</div>
				<div class="col-md-4 about-grids">
					<h3>About </h3>
					<div class="histry">						
					
						
						<p>Amity School of Fashion Technology offers professional education in the field of Design, 
						Technology & Management of fashion, textile and apparel industry. Amity School of Fashion 
						Technology endeavors to create professionals who can understand the dynamics of global
						 business environment of the fashion & apparel industry in post quota & liberalized textile 
						 economy. The objective of these programme is to inculcate in the students the aptitude and
						  skills to work as professionals in various functional areas of Fashion & Apparel Industry. </p>
						  
					</div>
					
				</div>
				<div class="col-md-4 about-grids">
					<h3>Courses Offered</h3>
					
				
					<div class="news-grids">
						<ul>
							<li><a href="#">BDes (Fashion Communication)</a></li>
							<li><a href="#">BDes (Fashion Design)- 3 continent</a></li>
							<li><a href="#">MA (Fashion Retail Management)</a></li>
							<li><a href="#">PhD in Fashion (Design / Technology/ Management)</a></li>
							<li><a href="#">BDes (Fashion Design)</a></li>
							<li><a href="#">MBA (Fashion Management)</a></li>
						</ul>
						
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
			
		</div>
	</div>
	<!--//popular-->
	<!--slid-->
	
	<!--//slid-->

	<!--footer-->
	<div class="footer">
		<div class="container">
			<p>Copyright © 2018 Pink Elixir.</p>
		</div>
	</div>
	<!--//footer-->
	<script type="text/javascript">
			$(document).ready(function() {
				/*
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
				*/
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/e-fashion/js/bootstrap.js"> </script>
</body>
</html>