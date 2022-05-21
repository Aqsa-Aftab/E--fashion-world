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
		 <div class="w3-col l8 s12">
    
      <!-- Blog entry -->
      <div class="w3-container w3-white w3-margin w3-padding-large">
        <div class="w3-center">
          <h3>Shahnaz Herbal Women's World International</h3>
         
        </div>

        <div class="w3-justify">
          <img src="/e-fashion/images/14.jpg" alt="Girl Hat" style="width:100%" class="w3-padding-16">
          <p><strong>Shahnaz Husain</strong> Shahnaz Husain is the CEO of Shahnaz Herbals Inc.
           She is a prominent Indian entrepreneur, who is best known for her herbal cosmetics, 
           particularly skin care products. In 2006 she was awarded the Padma Shri by the Government of India.
           Shahnaz Husain is the pioneer and leader of professional beauty training in India. She started her 
           beauty training school (previously known as Woman's World International) nearly four decades ago, 
           at a time when only apprenticeship training was available. She realized the need for a comprehensive
            professional training programme, comprising of both theory and practice. The vision of providing 
            quality education across the globe has seen the Beauty Academy expanding to nearly 75 beauty training 
            schools in India and abroad. Since the Shahnaz Husain brand is globally recognized, students have been
             coming from abroad to study and acquire the valued Shahnaz Husain Diploma.
           With the fast growth of the beauty business, there is a corresponding demand for
            professionally trained personnel. Shahnaz Husain academy has been fulfilling this demand
             through their globally acclaimed courses.
            Shahnaz Husain's Beauty Training Academy offers comprehensive professional Diploma and Post-Graduate
             Courses, opening up lucrative career opportunities. The courses equip the student with expertise in 
             all aspects of beauty care and in highly specialized premium treatments.
           </p>
          
          
          <p class="w3-clear"></p>
         
        </div>
      </div>
      <hr>

      <!-- Blog entry -->
      <div class="w3-container w3-white w3-margin w3-padding-large">
        <div class="w3-center">
          <h3>VLCC Institute of Beauty, Health and Management</h3>
        
        </div>

        <div class="w3-justify">
          <img src="/e-fashion/images/15.jpg" alt="Men in Hats" style="width:100%" class="w3-padding-16">
          <p><strong>VLCC Institute</strong> is widely recognized for its weight loss
           solutions and therapeutic approach to beauty treatments. We have among the largest scale
            and breadth of operations within the beauty and wellness services industry in India,
             serving consumers across 236 locations in 122 cities and across 11 countries in South Asia, 
             South East Asia, the GCC Region and East Africa. We operate 197 Wellness Centres in India and
              49 in 10 other countries and run VLCC Institutes Beauty Courses of Beauty & Nutrition that 
              have grown to become India largest chain of vocational education academies in the beauty and
               nutrition training segment with 69 campuses, training nearly 10,000 students annually and 
               offering courses in multiple disciplines.
               We have leveraged our exclusive consumer database, and our insight into evolving beauty
                and wellness needs to build and grow a diversified product portfolio in-house, through our
                 Subsidiary VLCC Personal Care Limited and market over 169 skincare, haircare, bodycare, 
                 functional foods and fortified foods products under the VLCC Natural Science, SkinMTX,
                  BelleWave and Enavose brands, to name a few, which are not only used as consumables in
                   treatments and therapies at VLCC Wellness Centres but are also retailed through over
                    72,000 outlets in India, apart from retail outlets in 20 countries.</p>
         
          <p class="w3-clear"></p>
          
          <!-- Example of comment field -->
       
        </div>
      </div>
<hr>
      <!-- Blog entry -->
      <div class="w3-container w3-white w3-margin w3-padding-large">
        <div class="w3-center">
          <h3>Lakme Training Academy</h3>
         
        </div>

        <div class="w3-justify">
          <img src="/e-fashion/images/16.jpg" alt="Runway" style="width:100%" class="w3-padding-16">
          <p><strong>Lakme Academy</strong> Lakme Academy powered by Aptech is a partnership between two industry stalwarts with decades of experience in their respective fields.</p>
          <p>As per the Indian Salon Report 2014, the Indian salon industry is worth US $2.6 billion,
           and is expected to grow by 30% over the next few years. As more & more people upgrade from 
           local parlours to spas, the Indian spa market is expected to become a US $7.2 billion industry.
            With growth in disposable incomes, international technologies & brands are entering the Indian
             market, and these brands are looking for qualified professionals with technological skills along 
             with specific functional competencies. This is the space that Lakmé Academy powered by Aptech 
             occupies.</p>
          <a href="/e-fashion/jsp/c.jsp" class="btn1 btn-1 btn-1e">Read More</a>
          <p class="w3-clear"></p>
          
          <!-- Example of comment field -->
         
        </div>
      </div>
      </div>
	</div>
	</div>
	<!--//popular-->
	<!--slid-->
	
	<!--//slid-->

	<!--footer-->
	<div class="footer">
		<div class="container">
			<p>Copyright Â © Pink Elixir</p>
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