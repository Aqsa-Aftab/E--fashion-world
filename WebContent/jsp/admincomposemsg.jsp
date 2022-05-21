<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,dbutil.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/e-fashion/favicon/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compose message</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



	
	

	
 	<%--  <% String info=(String)request.getAttribute("ms");
if(info!=null){ %>
 <script>
      $(document).ready(function(){
    	  $("#modal").show();
  		$("#closebtn").click(function(){
  			$("#modal").hide();
  		});
      }); 
  	
  </script>	
     
      
      
      
	<%} %> 
	 --%>

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

</head>
<body class="w3-black">
 <%-- <!-- The Modal -->
	<div id="modal" style="display: none">
  <div class="modal show" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
     
        <!-- Modal Header -->
        <div class="modal-header" style="background-color: #d3d3d3">
        <button type="button" class="close" id="closebtn">&times;</button>
         <h4 class="modal-title">Message</h4>
           </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         <%=info %>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer" style="background-color: #d3d3d3">
          <button type="button" class="btn btn-secondary" id="closebtn" >Close</button>
      
        
      </div>
    </div>
  </div></div></div>
  


 --%><!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  <img src="/e-fashion/images/5.jpg" style="width:100%">
  
  
  
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
    <i class="fal fa-newspaper w3-xxlarge"></i>
    <p>ADD NEWS</p>
  
  <a href="/e-fashion/jsp/contactusmessage.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-comments w3-xxlarge"></i>
    <p>CONTACT US MESSAGES</p>
  </a>
  <a href="/e-fashion/Logout" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
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

<!-- Page Content -->
<div class="w3-padding-large" id="main">
  <!-- Header/Home -->
  
  
  <div class="w3-padding-32 w3-content  w3-text-dark-grey" id="contact">
			<h2 style="color:#ff0000; font-size: 50px; font-family: verdana">COMPOSE MESSAGE</h2>
			<br><br><br>
		<div class="alert alert-danger" id="divsd2"
			style="margin-bottom: 3%; width: 100%; height: auto; display: none;background-color: #ff0000;color :#fff">
                   
		</div>	
		
		
		
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
		
     <form action="/e-fashion/MsgCompose" method="post"> 
      
      
      
      <script>
$(document).ready(function(){
    $(".dropdown-toggle").dropdown();
});
</script>
      
     
     
          <p><input class="w3-input w3-padding-16 w3-grey" type="text" placeholder="Receiver Id" id="userid" required name="receiverid">
      <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" style="height: 40px" id="menu1" type="button" data-toggle="dropdown">View User Ids 
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
    
    
    
     
       <%
			String strsql = "Select * from logininfo";
			ResultSet rs = CrudOperation.getData(strsql);

			while (rs.next()) {
		            %> 
      <li role="presentation"><h4 role="menuitem" tabindex="-1" href="#" 
      style="padding-left: 10px;font-family: Montserrat"><%=rs.getString("userid") %></h4></li>
      
      
      <% } %>
      
      

     <!--  <li role="presentation"><h4 role="menuitem" tabindex="-1" href="#" style="padding-left: 10px">akhil</h4></li> 
      <li role="presentation"><h4 role="menuitem" tabindex="-1" href="#" style="padding-left: 10px">manoj</h4></li> 
      <li role="presentation"><h4 role="menuitem" tabindex="-1" href="#" style="padding-left: 10px">keshav</h4></li> 
      <li role="presentation"><h4 role="menuitem" tabindex="-1" href="#" style="padding-left: 10px">pragati</h4></li> 
      <li role="presentation"><h4 role="menuitem" tabindex="-1" href="#" style="padding-left: 10px">pranjal</h4></li> 
      <li role="presentation"><h4 role="menuitem" tabindex="-1" href="#" style="padding-left: 10px">aqsa</h4></li> 
      <li role="presentation"><h4 role="menuitem" tabindex="-1" href="#" style="padding-left: 10px">sana</h4></li> 
      -->
      
      
      
     
    
      </ul>
  </div>
      <p><input class="w3-input w3-padding-16 w3-grey" type="text" placeholder="Subject" required name="subject"></p>
      <p><textarea class="w3-input w3-padding-64 w3-grey" type="text" placeholder="Message" required name="msgtext"></textarea></p>
      <p><br><br>
        <button class="w3-button w3-grey w3-padding-large" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </p>
    </form>
    
    
	                     <% } %>                  
		
		
		
		</div>
	</div>

  
  
  
  
  
  
  
  

 
<!-- END PAGE CONTENT -->
</div>

</body>
</html>
