<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,dbutil.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Profile</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
<body class="w3-black">

<%
String path=request.getContextPath();   
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

				HttpSession hs;
				hs = request.getSession(false);
				String ui = (String) hs.getAttribute("userinfo");
				if (ui == null || hs.isNew()) {
					response.sendRedirect("/e-fashion/jsp/login.jsp");
				} 
				else {
				String strsql="select * from admin where adminid=?";
				ResultSet rs = CrudOperation.getData(strsql,ui);
				if(rs.next())
				{
			%>
			
			<%
			String imgname="";
			String picsrc=null;
			
			String str="select picname from admin where adminid=?";
			
			ResultSet rs1=CrudOperation.getData(str,ui);
			if(rs1.next())
			{
				imgname=rs1.getString("picname");
				if(imgname==null)
				{
					picsrc="/e-fashion/images/nodp.jpg";
					
				}
				else{
					
					picsrc=basePath+ui+"/"+imgname;
				}
				System.out.print(picsrc);
			 }
				
			%>

<nav class="w3-sidebar w3-hide-medium w3-hide-small" style="width:40%">
  <div class="bgimg" style="background-image: url('<%=picsrc%>');"></div>
</nav>
<%
	
	int s=0,c=0;
	String str1 = "select * from inbox where receiverid=?";
	String str2 = "select * from contactus";

	ResultSet rs0 = CrudOperation.getData(str1, ui);
	while (rs0.next()) {
		if (rs0.getInt("status") == 1)
			s++;
	}
	ResultSet rs2 = CrudOperation.getData(str2);
	while (rs2.next()) {
		if (rs2.getInt("status") == 1)
			c++;
	}
	
	%>
<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  <img src="/e-fashion/images/5.jpg" style="width:100%">
  
  <a href="/e-fashion/jsp/adprofile.jsp" class="w3-bar-item w3-button w3-padding-large w3-black">
    <i class="fa fa-home w3-xxlarge"></i>
    <p>HOME</p>
  </a>
  <a href="#about" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>ABOUT</p>
  </a>
 </a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-phone w3-xxlarge"></i>
    <p>CONTACT</p>
  </a>
  <a href="/e-fashion/jsp/admincomposemsg.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-envelope w3-xxlarge"></i>
    <p>MESSAGE</p>
  </a>
  <a href="/e-fashion/jsp/admminbox.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-inbox w3-xxlarge"></i>
    <p>INBOX</p>
  </a>
  <a href="/e-fashion/jsp/adminsenditem.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-share-square w3-xxlarge"></i>
    <p>SEND ITEMS</p>
  </a>
  <a href="/e-fashion/jsp/adminviewaccount.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>VIEW ACCOUNTS</p>
  </a>
  <a href="/e-fashion/jsp/addnew.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fal fa-newspaper w3-xxlarge"></i>
    <p>ADD NEWS</p>
  
  <a href="/e-fashion/jsp/contactusmessage.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-comments w3-xxlarge"></i>
    <p>CONTECT US MESSAGES</p>
  </a>
  <a href="/e-fashion/jsp/index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-sign-out w3-xxlarge"></i>
    <p>LOGOUT</p>
  </a>
</nav>

<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
  <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
    <a href="#" class="w3-bar-item w3-button" style="width:25% !important">HOME</a>
    <a href="#about" class="w3-bar-item w3-button" style="width:25% !important">ABOUT</a>
    <a href="#photos" class="w3-bar-item w3-button" style="width:25% !important">PHOTOS</a>
    <a href="#contact" class="w3-bar-item w3-button" style="width:25% !important">CONTACT</a>
  </div>
</div>

<div class="w3-main w3-padding-large" style="margin-left:40%">

  <!-- Menu icon to open sidebar -->
  <span class="w3-button w3-top w3-white w3-xxlarge w3-text-blue w3-hover-text-blue" style="width:auto;right:0;" onclick="openNav()"><i class="fa fa-bars"></i></span>
<a href="/e-fashion/Logout"
					class="w3-button w3-blue w3-padding-large"
					style="text-decoration: none; font-size: 20px"> <i
					class="fa fa-power-off"></i> LOGOUT
				</a>
  
  <!-- Header -->
  <header class="w3-container w3-center" style="padding:128px 16px" id="home">
    <h1 class="w3-jumbo w3-text-blue"><b>Change Profile Picture</b></h1>
   
   
  </header>
<%}} %>
  <!-- Portfolio Section -->
  <div class="w3-padding w3-content w3-center" id="portfolio" style="margin-left: -25%">
    <%@ include file="/jsp/upload.jsp"%>
</div>
  
   
<!-- END PAGE CONTENT -->
</div>

</body>
</html>
