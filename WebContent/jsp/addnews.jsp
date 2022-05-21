<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,dbutil.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add news</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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





<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  <img src="/e-fashion/images/5.jpg" style="width:100%">
  
  <a href="/e-fashion/jsp/index.jsp" class="w3-bar-item w3-button w3-padding-large w3-black">
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
  <a href="/e-fashion/jsp/composemsg.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-envelope w3-xxlarge"></i>
    <p>MESSAGE</p>
  </a>
  <a href="/e-fashion/jsp/admininbox.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-inbox w3-xxlarge"></i>
    <p>INBOX</p>
  </a>
  <a href="/e-fashion/jsp/adminsenditem.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-share-square w3-xxlarge"></i>
    <p>SENT ITEMS</p>
  </a>
  <a href="/e-fashion/jsp/adminviewaccount.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>VIEW ACCOUNTS</p>
  </a>
  <a href="/e-fashion/jsp/addnews.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-newspaper w3-xxlarge"></i>
    <p>ADD NEWS</p>
  
  <a href="/e-fashion/jsp/contactusmessage.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-comments w3-xxlarge"></i>
    <p>CONTACT US MESSAGES</p>
  </a>
   <a href="/e-fashion/Logout" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-sign-out w3-xxlarge"></i>
    <p>LOGOUT</p>
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

<!-- Header -->
		<header class="w3-container w3-center" style="padding: 16px">
		<h1 class="w3-jumbo w3-text-blue">
			NEWS CONTENT</b>
		</h1>

		</header>

		<!-- Portfolio Section -->
		<div class="w3-padding-32 w3-content">
			<br> <br>
			
			<%
			String ms = null;
			ms = (String) request.getAttribute("msg");
			if (ms != null) {
		%>
		<div class="btn btn-danger" id="divsd1"
			style="margin: 0 auto; margin-bottom: 3%; width: 68%; height: auto;">
			<strong><%=ms%></strong>
		</div>
		<%
			}
		%> <br>
			<form action="/e-fashion/AddNews" method="post">
				<p>
					<input class="w3-input w3-padding-16 w3-grey" type="text"
						placeholder="Subject"  name="subject">
				</p>
				<p>
					<textarea class="w3-input w3-padding-64 w3-grey" type="text"
						placeholder="News Content"  name="news"></textarea>
				</p>
				<p>
					<br>
					<br>
					<button class="w3-button w3-grey w3-padding-large" type="submit">
						<i class="fa fa-paper-plane"></i> Add News
					</button>
				</p>
			</form>



			<!-- END PAGE CONTENT -->
		</div>
  
    
  <% } %>

<!-- END PAGE CONTENT -->
</div>

</body>
</html>
