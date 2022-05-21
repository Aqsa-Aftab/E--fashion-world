 <%@ page import="java.sql.*" %>
        <%@ page import="dbutil.*" %>
<head>
<title>Company Profile</title>


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
<link href="/e-fashion/css/style-profile.css" type="text/css" rel="stylesheet" media="all">   
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
    <a href="/e-fashion/jsp/companyhome.jsp" class="logo">
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
				
				String strprofile="select * from companyprofessional where companyid=?";
				ResultSet rs3= CrudOperation.getData(strprofile,ui);
				rs3.next();
				
				
				
				
				
				String path=request.getContextPath();
				String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
				System.out.println(basePath);
				
				
					
				
					
					
					String imgname="";
				String picsrc=null;
				
				String strpic="select picname from registration where userid=?";
				
				ResultSet rs2=CrudOperation.getData(strpic, ui);
				if(rs2.next())
				{
					imgname=rs2.getString("picname");
					if(imgname==null)
					{
						picsrc="/e-fashion/images/pic5.jpg";
						
					}
					else{
						
						picsrc=basePath+ui+"/"+imgname;
					}
				}
				
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
                    <a class="active" href="/e-fashion/jsp/companyhome.jsp">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
               
                
               
               <li>
                    <a href="/e-fashion/jsp/companyprofile.jsp">
                        <i class="fa fa-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
               
               
               
               
                <li class="sub-menu">
                    <a href="/e-fashion/jsp/companycomposemsg.jsp">
                        <i class="fa fa-envelope"></i>
                        <span>Compose Message</span>
                    </a>
                    
                </li>
                <li>
                    <a href="/e-fashion/jsp/companyinbox.jsp">
                        <i class="fa fa-inbox"></i>
                        <span>Inbox</span>
                    </a>
                </li>
                <li>
                    <a href="/e-fashion/jsp/companysentitem.jsp">
                        <i class="fa fa-envelope-o"></i>
                        <span>Sent Items</span>
                    </a>
                </li>
                 <li>
                    <a href="/e-fashion/jsp/viewcandidates.jsp">
                        <i class="fa fa-user"></i>
                        <span>View Candidates</span>
                    </a>
                </li>
               
                 <li>
                    <a href="/e-fashion/jsp/companyprofilesetting.jsp">
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
<!--sidebar end-->
<!--main content start-->





<div class="buttons-wrapper"> 
		<input id="slide1" class="w3slider-input" type="radio" name="slider" checked>
		<input id="slide2" class="w3slider-input" type="radio" name="slider">
		<!-- <input id="slide3" class="w3slider-input" type="radio" name="slider">
		 --><!-- <input id="slide4" class="w3slider-input" type="radio" name="slider">  -->
		<ul class="slider">
			<li class="agileits"> 
				<!-- banner -->
				<div class="banner">
					<div class="banner-w3lsinfo">
						<h2><%=rs3.getString("name") %></h2>
						<div class="container">
							<div class="col-md-4 header-w3left" >
								<!-- <img src="images/img1.jpg" alt=""/> -->
								<img src="<%=picsrc %>" style="width: 350px;height: 350px">	
									</div>
								
								<form action="/e-fashion/Upload" method="post" enctype="multipart/form-data"> 
  <div>
   <input type="file" name="Addpic" class="btn btn-info"  style="margin-top: 10px">
<!-- <div class="btn-info"><input type="submit" value="upload pic"></div> -->
<input  class="btn btn-info" type="submit" value="Change Profile Pic" style="margin-top: 10px" ></div>
</form>
						
									
								<!-- 	<div class="btn-link" style="margin-left: 70px;margin-top: 10px"><button>Upload Profile Pic</button></div>
									 -->
								
						
							<div class="col-md-8 header-w3right"> 
								<h3 class="agileits-title">About Us</h3> 
								<div class="profile-agileinfo"> 
									<p><%=rs3.getString("about") %></p>
									<div class="col-md-4 col-xs-4 profile-grids"> 
										<i class="fa fa-user"></i>
										<h5>Company Details</h5>
										<ul class="address"> 
											<li> 
												<b>CEO name</b> : <span> <%=rs3.getString("ceoname") %></span>
											</li>
											
											<li> 
												<b>Company Work Area</b> : <span> <%=rs3.getString("workarea") %></span>
											</li> 
										</ul>
									</div>
									<div class="col-md-4 col-xs-4 profile-grids"> 
										<i class="fa fa-envelope"></i>
										<h5>Contact Us</h5>
										<ul class="address"> 
											<li> 
											 	<b>PHONE</b> : <span> <%=rs.getString("phoneno") %></span>
											 </li> 
											
											<li> 
												<b>ADDRESS</b> : <span> <%=rs.getString("address") %></span>
											 </li>
										</ul>
									</div>
									<div class="col-md-4 col-xs-4 profile-grids"> 
										<i class="fa fa-share-alt"></i>
										<h5>Comments</h5>
										<ul class="address"> 
											<li> 
												<b>E-MAIL</b> :  <span> <%=rs3.getString("email") %></span>
											</li>
											<li> 
												<b>PHONE NO</b> :<span> <%=rs3.getString("phoneno") %></span>
											</li>
											
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<!-- //banner --> 
			</li>
			
			<li class="agileits"> 
				<!-- contact -->
				<div class="contact agileits-w3layouts">
					<div class="container"> 
						 	
						<div class="contact-w3lsrow">
							<div class="col-md-6 contact-wthree-left">
								
								<div class="faddressw3-agileinfo">
								<h3 class="agileits-title"> Our Work</h3>
									
										<p><%=rs3.getString("work") %> </p>
									
									
								</div>
								
								
							</div>
							<div class="col-md-6 contact-wthree-right">
								<div class="faddressw3-agileinfo">
								<h3 class="agileits-title">Contact Us</h3>
									<div class="faddress-w2left">
										<p><%=rs3.getString("city") %> </p>
									
									</div>
									<div class="faddress-w4left">
										<p><%=rs.getString("address") %> </p>
									
									</div>
									<div class="faddress-w3right">
										<p>Call us : <%=rs.getString("phoneno") %></p>
										<p>E-mail : <%=rs3.getString("email") %></p>
									</div>
									<div class="clearfix"></div> 
								</div>
							</div>
							<div class="clearfix"> </div>
						</div> 
						
					</div>
				</div>
				<!-- //contact -->  
			</li> 
		</ul> 
			<label for="slide1"></label>
			<label for="slide2"></label>
			 <label for="slide3"></label>
			<label for="slide4"></label> 
	</div>	
	<!-- //main -->  
	<!-- swipe box js -->
	<script src="/e-fashion/js/jquery.swipebox.min.js"></script> 
	<script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
	</script> 
	
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/e-fashion/js/bootstrap.js"></script>
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
