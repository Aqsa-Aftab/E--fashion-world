<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,dbutil.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us messages</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  
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
		String str = "select * from contactus";

		ResultSet rs = CrudOperation.getData(str);
		int f=0;
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
			CUSTOMERS MESSAGES</b>
		</h1>

		</header>

		<!-- Portfolio Section -->
		<div class="w3-padding w3-content">
			<br> <br> <br>
			<form action="/e-fashion/DeleteContactMsgs" method="post">
				<table class="table table" border="2">
				
				
				
				
				
				
				
				
		 		<form action="/e-fashion/DeleteContactMsgs" method="post">
				<table class="table">
					<tr>
						<th>Select</th>
						<th>Name</th>
						<th>Email</th>
						<th>Message</th>
						<th>Date</th>
					</tr>
					<%
						while (rs.next()) { f=1;
					%>
					<tr>
						<td><input type="checkbox" name="chk"
							value="<%=rs.getString("email")%>"></td>
						<td><b><%=rs.getString("name")%></b></td>
						<td><a href="mailto:<%=rs.getString("email")%>"><%=rs.getString("email")%></a></td>
						<td><b><%=rs.getString("msg")%></b></td>
						<td><%=rs.getString("date") %></td>
					</tr>
					<%
						}
					%><%if(f==0){ %>
					<tr><th colspan="5"><strong>No Messages</strong></th></tr><%} %>
				</table>
				<button class="btn btn-danger">
								<span class="glyphicon glyphicon-trash"></span> Delete Messages
							</button>
			</form> 
				
				
				
				
				
				
				
				
				
					<!-- <tr>
						<th>Select</th>
						<th>Name</th>
						<th>Email</th>
						<th>Message</th>
						<th>Date</th>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk"
							value="mk085187@gmail.com"></td>
						<td><b>Manoj kumar</b></td>
						<td><a href="mailto:mk085187@gmail.com">mk085187@gmail.com</a></td>
						<td><b>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </b></td>
						<td>2018-03-11</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk"
							value="aqsa1300@gmail.com"></td>
						<td><b>Aqsa bin aftab</b></td>
						<td><a href="mailto:aqsa1300@gmail.com">aqsa1300@gmail.com</a></td>
						<td><b>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </b></td>
						<td>2018-03-11</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk"
							value="abhikk07@gmail.com"></td>
						<td><b>Abhinav Rastogi</b></td>
						<td><a href="mailto:abhikk07@gmail.com">abhikk07@gmail.com</a></td>
						<td><b>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</b></td>
						<td>2018-03-15</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="chk"
							value="sana123@gmail.com"></td>
						<td><b>Sana</b></td>
						<td><a href="mailto:sana123@gmail.com">sana123@gmail.com</a></td>
						<td><b>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</b></td>
						<td>2018-04-20</td>
					</tr>
					
					
					
				</table>
				<button class="btn btn-danger">
								<span class="glyphicon glyphicon-trash"></span> Delete Messages
							</button>
			</form>
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
