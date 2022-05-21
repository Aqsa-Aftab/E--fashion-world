 <%@ page import="java.sql.*" %>
        <%@ page import="dbutil.*" %>
<head>
<title>User-profilesetting</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="/e-fashion/css/bootstrap.min-user.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="/e-fashion/css/style-user.css" rel='stylesheet' type='text/css' />
<link href="/e-fashion/css/style-responsive-user.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="/e-fashion/css/font-user.css" type="text/css"/>
<link href="/e-fashion/css/font-awesome-user.css" rel="stylesheet"> 
<link rel="stylesheet" href="/e-fashion/css/morris-user.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="/e-fashion/css/monthly-user.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="/e-fashion/js/jquery2.0.3.min.js"></script>
<script src="/e-fashion/js/raphael-min.js"></script>
<script src="/e-fashion/js/morris.js"></script>


<link href="/e-fashion/css/bootstrap-profile.css" type="text/css" rel="stylesheet" media="all">
<link href="/e-fashion/css/profilesetting.css" type="text/css" rel="stylesheet" media="all">   
<link href="/e-fashion/css/font-awesome-profile.css" rel="stylesheet">		<!-- font-awesome icons -->   
<link rel="stylesheet" href="/e-fashion/css/swipebox-profile.css">    <!-- swipebox -->   
<!-- //Custom Theme files --> 
<!-- js -->
<script src="/e-fashion/js/jquery-2.2.3.min.js"></script>  
<!-- //js -->
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Kurale" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- //web-fonts -->
</head>
<body>

<% HttpSession hs = request.getSession(false); 
String ui=(String)hs.getAttribute("userinfo");

if(ui==null && hs.isNew())
{request.setAttribute("msg","unauthorized access");
			RequestDispatcher rd= request.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(request, response);
			} 
			
			
else
{
%>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="/e-fashion/jsp/userhome.jsp" class="logo">
        Home
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    
        
        <%
		  		String strsql= "select * from registration where userid=?";
				ResultSet rs= CrudOperation.getData(strsql,ui);

				rs.next();
				
		%>
		
		
		
      
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="/e-fashion/jsp/userhome.jsp">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
               
                
               
               <li>
                    <a href="/e-fashion/jsp/userprofile.jsp">
                        <i class="fa fa-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
               
               
               
               
                <li class="sub-menu">
                    <a href="/e-fashion/jsp/compose-mail.jsp">
                        <i class="fa fa-envelope"></i>
                        <span>Compose Message</span>
                    </a>
                    
                </li>
                <li>
                    <a href="/e-fashion/jsp/userinbox.jsp">
                        <i class="fa fa-inbox"></i>
                        <span>Inbox</span>
                    </a>
                </li>
                <li>
                    <a href="/e-fashion/jsp/usersentitem.jsp">
                        <i class="fa fa-envelope-o"></i>
                        <span>Sent Items</span>
                    </a>
                </li>
               
                <li>
                    <a href="/e-fashion/jsp/profilesetting.jsp">
                       <i class="fa fa-cog"></i>
                        <span>Profile Setting</span>
                    </a>
                </li>
                 <li>
                    <a href="/e-fashion/Logout">
                        <i class="fa fa-key"></i>
                        <span>Log Out </span>
                    </a>
                </li>
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end--><!--main content start-->

<div class="buttons-wrapper" style="float: left">
	

			<form action="/e-fashion/Profilesetting" method="post">
		
				 
						<div class="col-md-6 contact-wthree-right">
										
									
									<input type="text" name="hobbies" placeholder="hobbies" required="">
									<input type="text"  name="dob" placeholder="date of birth" required="">
									<input type="text"  name="jobtitle" placeholder="Job Title" required="">
									<textarea name="aboutme" placeholder="About you" required=""></textarea>
									
								
						
										
						</div>		
								
						<div class="col-md-6 contact-wthree-right"> 
							
							
									<input type="email" name="facebook" placeholder="facebook" required="">
									<input type="email" class="email" name="email" placeholder="Email" required="">
									<input type="text"  name="twitter" placeholder="twitter" required="">
									<textarea name="skills" placeholder="Your skills" required=""></textarea>
									
								
							 
						</div>
						
				 
			
				 
				<div class="col-md-6 contact-wthree-right">  <input type="submit" value="SAVE Profile Details" > </div>
				  </form>	</div>
			
</section>
<script src="/e-fashion/js/bootstrap.js"></script>
<script src="/e-fashion/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/e-fashion/js/scripts.js"></script>
<script src="/e-fashion/js/jquery.slimscroll.js"></script>
<script src="/e-fashion/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="/e-fashion/js/jquery.scrollTo.js"></script>
	<%} %>
</body>
</html>
