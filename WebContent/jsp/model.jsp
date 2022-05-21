<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pink Elixir</title>
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
	<div class="blog">
		<div class="container">
		
			<div class="col-md-8 blog-left" >
			
				<div class="blog-info">
				<h3> <center>Modelling Institute</center></h3>
				<hr>
					<h3>Film and Television Institute of India (FTII)</h3>
					
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="single.html"> <img src="/e-fashion/images/ft.jpg" class="img-responsive zoom-img" alt=""/></a>
						</div>						
						<p class="snglp">Established in 1960 on the erstwhile Prabhat Studio premises at Pune,
						 FTII boasts of a rich legacy in quality Indian cinema. The Prabhat Studio was declared
						  as a heritage site by the Pune Municipal Corporation and is used by students to this day.
						   “The Institute was renamed 'The Film and Television Institute of India' in 1971.
						    The Television Wing, earlier located at Mandi House, New Delhi was shifted to Pune in
						     the early seventies, bringing together the training in film and television under a common 
						     roof” states the official website.</p>
				
					</div>	
				</div>
				<hr>	
				<div class="blog-info">
					<h3>Whistling Woods International</h3>
					
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="single.html"> <img src="/e-fashion/images/ww.jpg" class="img-responsive zoom-img" alt=""/></a>
						</div>					
						<p class="snglp">Established in 2006 by filmmaker Subhash Ghai, Whistling Woods International (WWI)
						 is an institute for film, fashion and communication. WWI has also successfully diversified into allied
						  fields like animation, media & entertainment, communication and fashion.
						  Hollywood Reporter has named WWI as one of the top ten film schools in the world
                           WWI is an invited partner for International campuses in United Kingdom & Nigeria
                          On invitation from the Ministry of Human Resource Development, Govt. of India, WWI has structured curriculum and guidelines for Media Studies at the High School level
                          Television giants like Star & Colors receive digitisation training from WWI faculty
                         Sony set up a Global Centre of Excellence in association with WWI
                        Associations with technology partners ensures that the students receive training on the latest equipment and technology.</p>
						
					</div>	
				</div>					
			<hr>
			
				<div class="blog-info">
					<h3>National School of Drama (NSD), New Delhi</h3>
					
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="single.html"> <img src="/e-fashion/images/nsd.jpg" class="img-responsive zoom-img" alt=""/></a>
						</div>						
						<p class="snglp">"It was set up by the Sangeet Natak Akademi as one of its constituent units in 1959.
						 In 1975, it became an independent entity and was registered as an autonomous organisation under the
						  Societies Registration Act XXI of 1860, fully financed by the Ministry of Culture, Government of India”,
						   informs the official website. At National School of Drama as part of their training, students are required
						    to produce plays which are then performed before the public.</p>
						    <a href="/e-fashion/jsp/b.jsp" class="btn1 btn-1 btn-1e">Read More</a>
						
					</div>	
				</div>	
			</div>	
			
			<div class="clearfix"> </div>
			
		</div>	
	</div>	<!--//popular-->
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