<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
    <h1 class="w3-jumbo"><span class="w3-hide-small">I'm</span> Admin.</h1>
    <p>Admin and Web Designer.</p>
    <img src="/e-fashion/images/5.jpg" alt="boy" class="w3-image" width="300px" height="300px">
     </header>

  <!-- About Section -->
  <div class="w3-content w3-justify w3-text-grey w3-padding-64" id="about">
    <h4 class="w3-text-light-grey">My Name :-</h4>
    <hr style="width:100px" class="w3-opacity">
    <p><h2>Manoj kr. Vishwakarma</h2></p>
    <h4 class="w3-text-light-grey">Gender :-</h4>
    <hr style="width:100px" class="w3-opacity">
    <p><h2>Male</h2></p>
    <h4 class="w3-text-light-grey">Address :-</h4>
    <hr style="width:100px" class="w3-opacity">
    <p><h2>BBD Chinhat lucknow</h2></p>
    <h4 class="w3-text-light-grey">Date OF Birth :-</h4>
    <hr style="width:100px" class="w3-opacity">
    <p><h2>1997-06-18</h2></p>
    <h3 class="w3-padding-16 w3-text-light-grey">My Skills</h3>
    <p class="w3-wide">Photography</p>
    <div class="w3-white">
      <div class="w3-dark-grey" style="height:28px;width:95%"></div>
    </div>
    <p class="w3-wide">Web Designing</p>
    <div class="w3-white">
      <div class="w3-dark-grey" style="height:28px;width:100%"></div>
    </div>
    <p class="w3-wide">Photoshop</p>
    <div class="w3-white">
      <div class="w3-dark-grey" style="height:28px;width:80%"></div>
    </div><br>
    
    <div class="w3-row w3-center w3-padding-16 w3-section w3-light-grey">
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">15+</span><br>
        Partners
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">102+</span><br>
        Projects Done
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">150+</span><br>
        Happy Clients
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">102+</span><br>
        Meetings
      </div>
    </div>

    
    
    <!-- Grid for pricing tables -->

  <!-- Contact Section -->
  <div class="w3-padding-64 w3-content w3-text-grey" id="contact">
    <h2 class="w3-text-light-grey">Contact Me</h2>
    <hr style="width:200px" class="w3-opacity">

    <div class="w3-section">
      <p><i class="fa fa-map-marker fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Lucknow, UtterPradesh</p>
      <p><i class="fa fa-phone fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Phone: +91 9999999999</p>
      <p><i class="fa fa-envelope fa-fw w3-text-white w3-xxlarge w3-margin-right"> </i> Email: precursor@gmail.com</p>
    </div>

   
  <!-- End Contact Section -->
  </div>
  
  

</body>
</html>
