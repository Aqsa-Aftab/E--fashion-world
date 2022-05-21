<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pink Elixir </title>
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
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-grids">
				<div class="col-md-7 banner-grids-info">					
					 
						<img class="img-responsive" src="/e-fashion/images/100.jpg" alt="">
						<div class="captn">
							<span>OUR PRODUCTS</span>
						</div>
					</a>
				</div>
				<div class="col-md-5 banner-grids-info">
					 
						<img class="img-responsive" src="/e-fashion/images/2.jpeg" alt="">
						<div class="captn">
							<span>OUR PRODUCTS</span>
						</div>
					</a>	
					
				</div>							
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//banner-bottom-->
	<!--popular-->
	<div class="popular">
		<div class="container">
			<h3>Popular Designers</h3>
			<h4>Indian designers are displaying much more novelty than before. The list of the most successful artists is not an easy one to make. 
			Considering the current talent pool, it is probably at an all-time high.</h4>
			<div class="popular-grids">
				<div class="col-md-4 popular-info">	
					<p><h3>Sabyasachi</h3> is a name that resonates with bridal wear in India. Every Indian bride wants to dress up in Sabyasachi,
					 and that’s like taking your wedding to a whole new level. In fact, he has also been doing that for free, 
					 for brides who cannot afford his clothesline, through the popular TV show ‘Band, Baaja & Bride. </p>
				</div>
				<div class="col-md-4 popular-info">	
					<p><h3>Manish Malhotra</h3>A man who is known for dressing up many of our Bollywood stars both in their reel and real life.
					 He never makes any of us realize the difficulty that goes into blending with a character. And, how each of 
					 them come with a sense of style that needs to come alive on screen.</p>
				</div>
				<div class="col-md-4 popular-info">	
					<p><h3>Ridhi Mehra</h3>Another inspiring story of a young and passionate girl. A coming of age designer who
					 gained popularity within no time started designing for some of the top Bollywood celebrities.
					  She quickly turned into their hot favorite too. It was apparent when actors and celebs on the Red Carpet 
					  would say ‘Ridhi Mehra’ to the question ‘Who are you wearing’? She also comes from a household that is into
					   the business of selling clothes.</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//popular-->
	<!--slid-->
	<div class="slid">
		<div class="container">
			<h2>Fashion design is the art of application of design and aesthetics or natural beauty to clothing and accessories.
			 Fashion design is influenced by cultural and social attitudes, and has varied over time and place.</h2>
		</div>
	</div>
	<!--//slid-->
	<!--news-->
	<div class="news">
		<div class="container">
			
			<div class="col-md-4 news-grids">
				<h3>Latest Offers</h3>
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									Model
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								A model is a person with a role either to promote, display or advertise commercial products,
						 or to serve as a visual aid for people who are creating works of art or to pose for photography
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									Fashion Designer.
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								Fashion is a popular style or practice, especially in clothing, footwear, accessories, makeup, hairstyle and body.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								Makeup Artist
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
								A make-up artist or makeup artist is an artist whose medium is the human body, applying makeup and prosthetics for theatrical, 
								television, film, fashion, magazines and other similar productions including all aspects of the modeling industry.
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 news-grids">
			</div>
			
			<div class="col-md-4 news-grids">
				<h3>More Products</h3>
				<ul>
					<li>Apparel</li>
					<li> Footwear</li>
					<li> Sportswear.</li>
					<li> Formal Wear.</li>
					<li> Watches & Jewelry</li>
					<li> Vintage & Secondhand.</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//news-->
	<!--testimonial-->
	<div class="testi">		
		<div class="container">
			<h3>Testimonials</h3>
			<div class="testi-info">
				<div class="col-md-4 testi-grids">
					<span>1</span>
					<p>Thank you so much for making my outfit you <br>did such an amazing job.
					 Everyone constantly asked<br> me where did I get it from... So you will deffo 
					 be getting recommendation. I've attached few pictures </p>
					<h5>~Chandni~ </h5>
				</div>
				<div class="col-md-4 testi-grids">
					<span>2</span>
					<p>The dress was a masterpiece. A big thanks to you<br>and your team. 
					What an amazing job you and<br> your team did! You can use any of these 
					picture for face book page. Can you give me some advise on how to clean. 
					We had the dry cleaner but they are not willing to dry clean. </p>
					<h5>~Rekha~ </h5>
				</div>
				<div class="col-md-4 testi-grids">
					<span>3</span>
					<p>Just about to board our plane but wanted to quickly say thank 
					you sooooooo much for everything, your dresses were amaziiiiiiiiiiing 
					and everyone and I mean EVRERYONED loved your creations. </p>
					<h5>~Natasha~ </h5>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//testimonial-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<p> Copyright   ©  2018  Pink  Elixir.</p>
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