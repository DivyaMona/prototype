<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
  <html>  
    <head>
 <title>VoxMos-SignIn</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/main.css">
 
<style>
@import url(https://fonts.googleapis.com/css?family=EB+Garamond|Cardo:400italic);

em {
  font-family: 'EB Garamond', serif;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  display: block;
  font-style:normal;
  padding-top: 0.1em;
  text-shadow: 0.07em 0.07em 0 rgba(0, 0, 0, 0.1);
}
  
em::before, em::after {display: inline-block; -webkit-transform: rotate(90deg);-moz-transform: rotate(90deg);-o-transform: rotate(90deg);-ms-transform: rotate(90deg);transform: rotate(90deg); opacity: 0.2; margin: 0 0.6em;font-size: 0.5em;}
</style>
  

</head>
<body>
	<div class="container-fluid">
	<div class=" window">
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">VoxMos</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#aboutus">About US</a></li>
      <li><a href="#">Reservation</a></li>
      <li><a href="#">Menu</a></li>
      <li><a href="#">Drinks Menu</a></li>
      
      </ul>
    </div>
  </div>
</nav>
 

<br>
<br>
<br>
<br>
<br>
<div id="circlemenu">
<span><p>Wstay Welcomes</p><p>VoxMos</p>
<p><button class="btn"><a href="#signup">Sign-in Here</a></button></p></span>
</div>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br><br>

</div>
<div id="signup">
  <form:form method="post" id="signup-form" action="login">    
		<%--  <form action="" id="signup-form" method="get"> --%>
		 <div class="sandbox sandbox-correct-pronounciation">
  <h1 class="heading heading-correct-pronounciation">
    <em>Sign In</em>
  </h1>
</div>
    <div class="form-group">
	<h3>Let's get acquainted!</h3>
	<form:input path="bookingId" class="form-control" id="bkid" placeholder="Enter Booking id" name="bkid"/>
      <!-- <input type="text" class="form-control" id="bkid" placeholder="Enter Booking id" name="bkid"> -->
    </div>
    <div class="form-group">
    <form:input path="phoneNum"  class="form-control" id="password" placeholder="Enter your Phone Number" name="password"/>
    
     <!--  <input type="password" class="form-control" id="password" placeholder="Enter your Phone Number" name="password"> -->
    </div>
  <!--   <input type="submit" value="Sign In" /> -->
    <button type="submit" class="btn btn-default" value="Sign In">Submit</button>
	<p>Not a registered user? <a href="${contextPath}/SpringCrudExample/signup" id="guestlink">Sign Up </a>here </p> 
	
	<p><i>or </i></span></p>
<p>Continue as <a href="https://divya191.typeform.com/to/zKy57R" target="_blank" id="guestlink">Guest</a></p> 
  </form:form>
  </div>
  <div id="aboutus">
		 <div class="sandbox sandbox-correct-pronounciation">
  <h1 class="heading heading-correct-pronounciation">
    <em>About Us</em>
  </h1>
</div>
    <div class="container">
  <div class="row">
    <div class="col-md-4 col-lg-4" id="roundimg"><img src="resources/images/party.jpg" width="250px" height="250px"/><p>Party Time</p></div>
    <div class="col-md-4 col-lg-4" id="roundimg"> <img src="resources/images/relax.jpg" width="250px" height="250px"/><p>Get Relaxed</p></div>
	<div class="col-md-4 col-lg-4" id="roundimg"> <img src="resources/images/gallery.jpg"  width="250px" height="250px"/><p>Our Gallery</p></div>
  </div>
    </div>
  </div>
	</div>
	<!--Footer-->
<footer class="container-fluid bg-4 text-center">
  <p>&copy; Copy Rights Reserved</p> 
</footer>
<script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
        
      
        
           </html>