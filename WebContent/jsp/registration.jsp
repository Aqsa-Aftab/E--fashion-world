<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Fashion World </title>
<link href="/e-fashion/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="/e-fashion/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Custom Theme files -->

<link href="/e-fashion/css/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->
<meta name="keywords" content="Fashion World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<!-- js -->
 <script src="/e-fashion/js/jquery-1.11.1.min.js"></script> 
<script src="/e-fashion/js/modernizr.custom.js"></script>

 

<link href="/e-fashion/css/RegistrationCss.css" rel="stylesheet" type="text/css" media="all"/><!--style_sheet-->
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700" rel="stylesheet">

<!--online_fonts-->
<link href="//fonts.googleapis.com/css?family=Lato" rel="stylesheet"><!--online_fonts-->



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


<script type="text/javascript">
  
  $(document).ready(function()
  		
  	{
      $("#userid").blur(
      		function(){
      			var ui=this.value;
      			//alert(ui)
       
      			 $.get("/e-fashion/Registration",
      			        {
      			          userid:ui
  
      			        },
      			        function(data,status){
      			        	
      			          //alert("Data: " + data + "\nStatus: " + status);
      			              $("#p1").html(data);
      			            $("#p1").show(); 
      			        // if(data=="")
      			          // $("#p1").hide(5000);
      			             
      			        }
      			        );
      			
      			
      			
      });
  });
  
</script>




<style>
h1 {
	font-family: "Lucida Console", Monaco, monospace;
	font-weight: 800;
}

#div1 {
	margin-top: 5%;
	margin-bottom: 10%;
}

.button {
	padding: 15px 25px;
	font-size: 24px;
	text-align: center;
	cursor: pointer;
	outline: none;
	color: #fff;
	background-color: silver;
	border: none;
	border-radius: 15px;
	
	margin-left: 40%;
}

.button:hover {
	background-color: green;
}

.button:active {
	background-color: #00ffff;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}

.content {
	max-width: 800px;
	margin: auto;
}

.navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #ffffff;
	border: 0;
	font-size: 14px !important;
	letter-spacing: 1px;
	/* opacity: 0.9; */
	height: 57px;
	border-radius: 8px;
}

.navbar li a, .navbar .navbar-brand {
	color: #474e5d !important;
}

.navbar-nav li a:hover {
	color: #d3d3d3 !important;
}

.navbar-nav li.active a {
	color: #c8c8c8 !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}



.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}


/* input[type="date"] {
    font-size: 15px;
    font-weight: 500;
    text-transform: capitalize;
    letter-spacing: 1px;
    padding: 10px;
    margin: 10px 0;
    width: 100%;
    outline: none;
    border: 1px solid #fff;
    background: transparent;
    color: #fff;
    box-sizing: border-box;
    font-family: 'Lato', sans-serif;
} */

</style>
<!--//end-smoth-scrolling-->
</head>
<body>
	<!--banner-->

	<!--//banner-->
	<!--navigation-->
	<div class="top-nav" style="margin-top: -5px">
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
		


	<h1> Registration Form</h1>
<div class="w3ls-main">
<div class="w3ls-form">
<form action="/e-fashion/Registration" method="post">
<ul class="fields">
<div class="Refer_w3l">
	
	
	<li>	
		<label class="w3ls-opt">UserId :<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="userid" id="userid" placeholder="UserId" required=" "/><div id="p1" style="display: none;color: red"></div>
		</div>
	</li>
	
	<li>	
		<label class="w3ls-opt">name :<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="username"  placeholder="first name" required=" "/>
		</div>
	</li>
	
	<li>
		<div class="mail">
			<label class="w3ls-opt">password :<span class="w3ls-star"> * </span></label>
			<span class="w3ls-text w3ls-name">
				<input type="password" name="userpass" placeholder="enter your password" required=""/>
			</span>
		</div>
	</li>

	
	<li>
		<div class="mail">
			<label class="w3ls-opt">e-mail :<span class="w3ls-star"> * </span></label>
			<span class="w3ls-text w3ls-name">
				<input type="email" name="useremail" placeholder="enter your e-mail" required=""/>
			</span>
		</div>
	</li>
	<li>
		<label class="w3ls-opt">phone number :<span class="w3ls-star"> * </span></label>	
			<span class="w3ls-text w3ls-name">
				<input type="text" name="userphone" placeholder="phone number" required=""/>
			</span>
	</li>
	<li>
		<label class="w3ls-opt">Address: <span class="w3ls-star"> * </span> </label>
		<div class="w3ls-input textarea">
			
			<span class="w3ls-text w3ls-name">
				<input type="text" name="useraddress" placeholder="Address" required=""/>
			</span>
			
			</div>
	</li>
	<!-- <li>
		<div class="mail">
			<label class="w3ls-opt">Birth Date :<span class="w3ls-star"> * </span></label>
			<span class="w3ls-text w3ls-name">
				<input type="date" name="userbirth" placeholder="enter your password" required=""/>
			</span>
		</div>
	</li> -->
						
						<div class="wthree-text">
						<h4> Gender </h4>
						<ul class="radio-w3ls">
							<li>
								<input type="radio" id="Female" name="gender" value="female">
								<label for="Female"> Female</label>
								<div class="check"></div>
							</li>
							<li>
								<input type="radio" id="Male" name="gender" value="male">
								<label for="Male"> Male</label>
								<div class="check">
									<div class="inside"></div>
								</div>
							</li>
						</ul></div>
						<div class="wthree-text">
						<h4>Choose Your Profession </h4>
						<ul class="radio-w3ls">
							<li>
								<input type="radio" id="a-option" name="usertype" value="designer">
								<label for="a-option"> Fashion Designer</label>
								<div class="check"></div>
							</li>
							<li>
								<input type="radio" id="b-option" name="usertype" value="model">
								<label for="b-option"> Model</label>
								<div class="check">
									<div class="inside"></div>
								</div>
							</li>
							<li>
								<input type="radio" id="a-option" name="usertype" value="MUA">
								<label for="a-option"> Makeup Artist</label>
								<div class="check"></div>
							</li>
							<li>
								<input type="radio" id="b-option" name="usertype" value="user">
								<label for="b-option"> User</label>
								<div class="check">
									<div class="inside"></div>
								</div>
							</li>
							<li>
								<input type="radio" id="b-option" name="usertype" value="company">
								<label for="b-option"> Company</label>
								<div class="check">
									<div class="inside"></div>
								</div>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
	</div>
	</ul>
<div class="clear"></div>
	<div class="w3ls-btn">
		<input type="submit" value="Submit Application">
	</div>
</form>
</div>
</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/e-fashion/js/bootstrap.js"> </script>
</body>
</html>