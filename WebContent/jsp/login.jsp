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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="/e-fashion/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="/e-fashion/css/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->
<meta name="keywords" content="Fashion World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
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


}
</style>
<!--//end-smoth-scrolling-->
</head>
<body style="background: url('/e-fashion/images/log.jpg'); background-attachment: fixed; ">
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
			<li><a href="/e-fashion/jsp/contact.jsp" data-hover="Contact">Contact</a></li>
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
		


	<div class="content text-center" style="padding-top: 70px;">
		<h1 style="color: #ffffff; font-family: montserrat" class="w3-jumbo">LOGIN
			PORTAL</h1>
	</div>
	<div class="container" id="div1">

		<%
			String ms = null;
			ms = (String) request.getAttribute("msg");
			if (ms != null) {
		%>
		<div class="alert alert-danger" id="divsd1"
			style="margin: 0 auto; margin-bottom: 3%; width: 68%; height: auto;">
			<strong><%=ms%></strong>
		</div>
		<%
			}
		%>
		<div class="alert alert-danger" id="divsd2"
			style="margin: 0 auto; margin-bottom: 3%; width: 68%; height: auto; display: none;">
                   
		</div>
		
		
	<% 
String ui="",upass="";
		Cookie[]c = request.getCookies();
		
		String data="";
		
		
		if(c.length>1)
		{
			
			for(int i=0;i<c.length;i++)
			{
				
				Cookie ck =  c[i];
				String name=ck.getName();
				
				if(name.equals("MyCookie"))
				{
					data= ck.getValue();
					break;
				}
				
			}
			
			String[] arr=data.split("#");
			ui=arr[0];
			upass=arr[1];
			System.out.println(arr[0]);
			System.out.println(arr[1]);
		}
	
		%>


			
		
		
		
		<form method="post" action="/e-fashion/Login"
			onsubmit="return main()">
			<div class="input-group  col-xs-8 container">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"
					style="font-size: 13px"></i></span> <input id="userid" type="text"
					class="form-control input-lg" name="userid" placeholder="User Id"
					required="required" value="<%=ui%>">
			</div>
			<br>
			

			<br>
			<div class="input-group col-xs-8  container">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-lock"></i></span> <input id="password"
					type="password" class="form-control input-lg" name="userpass"
					placeholder="Password" required="required" value="<%=upass%>">
			</div>
			<br>
			<div class="alert alert-danger" id="pdiv"
				style="margin: 0 auto; margin-bottom: 3%; width: 68%; height: auto; display: none">
				<strong>Invalid Password.</strong>
			</div>
			<br> <input id="chk" type="checkbox"
				style="margin-top: 20px; margin-left: 17%" name="remember"
				checked="checked" value="1">&nbsp;&nbsp;&nbsp;<label
				style="font-size: 20px; color: #fff">Remember Me</label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;
			<small style="font-size: 20px; color: #87cefa">Not a Member?
				<a href="/e-fashion/jsp/registration.jsp" class="login-agileits-top"
				style="margin-top: 20px; font-size:20px; color:black; " >Register Here!</a>
				
			<br><br>
			<center><button class="btn btn-danger" style="width: 100px;height: 50px ">Login</button></center>
		</form>

	</div>
	<!--//testimonial-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<p>Copyright © 2018 Pink Elixir .</p>
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