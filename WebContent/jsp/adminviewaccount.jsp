<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,dbutil.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send item</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/e-fashion/bootfiles/bootstrap.min.css">
<script type="text/javascript"
	src="/e-fashion/bootfiles/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="/e-fashion/bootfiles/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
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
		String str = "select * from logininfo where usertype!='admin'";

		ResultSet rs = CrudOperation.getData(str);
	%>
	


<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  <img src="/e-fashion/images/5.jpg" style="width:100%">
  
  <a href="/e-fashion/jsp/index.jsp" class="w3-bar-item w3-button w3-padding-large w3-black">
    <i class="fa fa-home w3-xxlarge"></i>
    <p>HOME</p>
  </a>
  <a href="/e-fashion/jsp/adprofile.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>ABOUT</p>
  </a>
  <a href="/e-fashion/jsp/adprofile.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-phone w3-xxlarge"></i>
    <p>CONTACT</p>
  </a>
  <a href="/e-fashion/jsp/admincomposemsg.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
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
  </a>
  
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

<!-- Page Content -->
<div class="w3-padding-large" id="main">
  <!-- Header -->
		<header class="w3-container w3-center" style="padding: 16px">
		<h1 class="w3-jumbo w3-text-blue">
			ACCOUNTS</b>
		</h1>

		</header>

		<!-- Portfolio Section -->
		<div class="w3-padding-32 w3-content">
			
			<form action="/e-fashion/DeleteUsers" method="post">
				<table class="table">
				
				
				
				
				
				  <div class="w3-padding-32 w3-content">
			<br> <br> <br>
			
					<tr>
						<th>Select</th>
						<th>UserId</th>
						<th>Password</th>
						<th>Usertype</th>
					</tr>
					<%
						while (rs.next()) {
							String userid = rs.getString("userid");
					%>
					<tr>
						<td><input type="checkbox" name="chk" value="<%=userid%>"></td>
						<td><b><%=rs.getString("userid")%></b></td>
						<td><%=rs.getString("userpass")%></td>
						<td><%=rs.getString("usertype")%></td>
					</tr>
					<%
						}
					%>
					<tr><th colspan="4"></th></tr>

				</table>
				<button class="btn btn-danger" name="message" value="inbox">
					<span class="glyphicon glyphicon-trash"></span> Delete
				</button>
			</form> 



			
		 
				
				
				
				<!-- 
					<tr>
						<th>Select</th>
						<th>UserId</th>
						<th>Password</th>
						<th>Usertype</th>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk" value="akhil"></td>
						<td><b>akhil</b></td>
						<td>123456789</td>
						<td>model</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk" value="manoj"></td>
						<td><b>manoj</b></td>
						<td>123456789</td>
						<td>designer</td>
					</tr>
					
				
					<tr>
						<td><input type="checkbox" name="chk" value="sahil"></td>
						<td><b>aqsa</b></td>
						<td>123456789</td>
						<td>beauty</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk" value="saloni"></td>
						<td><b>pragati</b></td>
						<td>123456789</td>
						<td>beauty</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk" value="satyarth"></td>
						<td><b>sana</b></td>
						<td>123456789</td>
						<td>designer</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk" value="shubham"></td>
						<td><b>pranjal</b></td>
						<td>123456789</td>
						<td>model</td>
					</tr>
					 -->
					

 

			<!-- END PAGE CONTENT -->
		</div>

   <!-- Footer -->
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
     <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
    <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>

</body>
</html>
