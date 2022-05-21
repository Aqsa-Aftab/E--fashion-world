 <%@ page import="java.sql.*" %>
        <%@ page import="dbutil.*" %>
<head>
<title>view inbox</title>


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

<style type="text/css">

.upload{
width: 60px;
height: 30px;
float:left;
color:black;
background: #DB7093;
padding-top: 10px;
padding-left: 20px

}

.div3{
width: 50%;
height: 500px;


color:black;
background:	
	
red;
padding-top: 10px;
align:center;


}
.div1{
width: 100%;
height: 70px;


color:black;
background:	
	
	
#696969;
padding-top: 10px


}
.div2{
width: 100%;
height: 250px;

padding-top: 10px

color:black;
background:	
	
	
#696969;
padding-top: 10px


}

.div3{
width: 100%;
height: 100px;

padding-top: 10px;

color:black;
background:#D8BFD8;



}
.div4{
width: 415px;
height: 400px;

padding-top: 10px;
padding-left: 10px;

color:black;
background:#BC8F8F;
float: left;


}

</style>

</head>
<body style="background-color: 	
	
	
	
#D2B48C;">

<% HttpSession hs = request.getSession(false); 
String ui=(String)hs.getAttribute("userinfo");

if(ui==null && hs.isNew())
{request.setAttribute("msg","unauthorized access");
			RequestDispatcher rd= request.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(request, response);
			} 
			
			
else
{
	
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	System.out.println(basePath);
	
	
		
	
		
		
		String imgname="";
	String picsrc=null;
	
	String strpic="select picname from registration where userid=?";
	
	ResultSet rs2=CrudOperation.getData(strpic, ui);
	rs2.next();
	
		imgname=rs2.getString("picname");
		if(imgname==null)
		{
			picsrc="/e-fashion/images/back.jpg";
			
		}
		else{
			
			picsrc=basePath+ui+"/"+imgname;
		}
	

%>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="/e-fashion/jsp/companyhome.jsp" class="logo">
        HOME
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
  
  
  <img src="<%=picsrc %>" style="width: 80px;height: 80px;margin-left: 50px;margin-top: -20px; float: right">	
  
    <!-- <!--search & user info start
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        user login dropdown start -->
        
        <%
		  		String strsql= "select * from registration where userid=?";
				ResultSet rs= CrudOperation.getData(strsql,ui);

				rs.next();
				
		%>
		
		
		
       <%--  <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                
                <span class="username"> <%=rs.getString("name") %>  </span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                
                <li><a href="#"><i class="fa fa-cog"></i>Profile Settings</a></li>
                <li><a href="/e-fashion/Logout"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul> --%>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
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
<!--main content start-->

<section id="main-content">
	<section class="wrapper" >
<div class="w3-padding-large" style="width: 40%;height: 500px">

		<%


int msgid=Integer.parseInt(request.getParameter("id"));
String sql="select * from inbox where msgid=?";

ResultSet rss=CrudOperation.getData(sql,msgid);
 
if(rss.next())
{%>


		<!-- Contact Section -->
		
			 <h2>From:</h2><h5><%= rss.getString("senderid") %></h5>
			<br> 

            <label>Subject:</label>
		<div class="div1">	<p>
				<input class="w3-input w3-white w3-padding-16" type="text" style="width: 100%;height: 50px"
					name="subject" value="<%=rss.getString("subject") %>" readonly>
			</p></div>
			<label>Message:</label>
		<div class="div2">	<p>
				<textarea class="w3-input w3-white w3-padding-64" type="text" style="width: 100%;height: 200px"
					name="message" readonly><%=rss.getString("message")%></textarea></p>
			</div>
				<% } }%>
				<br> <br>
				<div class="upload"> <a href="/e-fashion/jsp/userinbox.jsp"
					class="w3-button w3-light-grey w3-padding-large"
					style="text-decoration: none; font-size: 10px"> <i
					class="fa fa-arrow-left"></i>BACK
				</a> </div>
			

		</div>



		</section></section>
<script src="/e-fashion/js/bootstrap.js"></script>
<script src="/e-fashion/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/e-fashion/js/scripts.js"></script>
<script src="/e-fashion/js/jquery.slimscroll.js"></script>
<script src="/e-fashion/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="/e-fashion/js/jquery.scrollTo.js"></script>

</body>
</html>
