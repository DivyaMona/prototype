<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
  <html>  
    <head>
 <title>VoxMos-Feedback</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/main.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
.heading{display:block; width:100%; margin-top: 5px;}
.form-control{width:80%}
#signup-form{ width: 700px;padding-top: 5px;    margin: 0 auto;}
.leftimage{    display: inline;}
.window {background-image:url("resources/images/bg1.jpg"),url("resources/images/bg2.jpg");background-repeat: no-repeat, no-repeat; background-position: right,left;background-size: 950px 847px; }
.navbar-default {background: rgba(0,0,0,0.4); border-color: transparent;}
.navbar-default .navbar-nav>li>a{color:#fff;font-size:16px}
.navbar-default .navbar-nav>li>a:hover,.navbar-default .navbar-brand:hover{color:rgb(40,56,120)}
.navbar-default .navbar-brand{    color: rgb(40,56,120);font-size: 32px;}
#rectmenu{width: 650px; margin: 0 auto; height: 450px;  background:rgba(40,56,120,0.9);  border-radius:50px; padding-left:25px;}

	@import url(https://fonts.googleapis.com/css?family=EB+Garamond|Cardo:400italic);


body {
    margin: 0;
    background-color: #5774b8;

}


.sandbox-correct-pronounciation {
  padding: 5em 0 5em 0;
}

.heading-correct-pronounciation {

  margin: auto;
  text-align: center;
  position: relative;
}


h1 {
  color: #fff;
  font-family: 'Cardo', serif;
  font-size: 1.5em;
  font-weight: normal;
  font-style: italic;
  letter-spacing: 0.1em;
  line-height: 2.2em;
}

em {
  font-family: 'EB Garamond', serif;
  font-size: 3.5em;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  display: block;
  font-style:normal;
  padding-top: 0.1em;
  text-shadow: 0.07em 0.07em 0 rgba(0, 0, 0, 0.1);
}
  
em::before, em::after {display: inline-block; -webkit-transform: rotate(90deg);-moz-transform: rotate(90deg);-o-transform: rotate(90deg);-ms-transform: rotate(90deg);transform: rotate(90deg); opacity: 0.2; margin: 0 0.6em;font-size: 0.5em;}
.bottom {font-size: 1.5em;letter-spacing: 0.07em;font-size: 1em; display: block;}
#roundimg img{border-radius:50%}
#roundimg p{font-family: 'EB Garamond', serif;font-size: 2em; color:white;letter-spacing: 0.1em;display: block;font-style:normal;padding-top: 0.1em;text-shadow: 0.07em 0.07em 0 rgba(0, 0, 0, 0.3);margin-left: 50px;}
 .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;    padding: 15px 0px 15px 0px; position:fixed;bottom:0; left:0; width:100%;
  }
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
	  <li><a href="feedback.html">Feedback</a></li>
	  <li><a href="#">Scan QR Code</a></li>
      </ul>
    </div>
  </div>
</nav>
 

<br>
<br>
<br>
<br>
<br>
<div id="rectmenu">
<br>
<br>
<br>
<br>
<center><h1><b><font size="18">Sorry for the inconvenience caused</font></b></h1>

<br>
<br>
<a href="static/addressIssue.html"><font size="4" color="gray">Would you like to raise an Ticket for the issue?</font>
<!--  <img src="resources/images/home.png"></img> -->
  </a>

</center>

	<%--  <form action="" id="signup-form" method="get"> --%>
	<%-- <form:form method ="POST" action = "/SpringCrudExample/login">  
		 <div class="sandbox sandbox-correct-pronounciation">
  <h1 class="heading heading-correct-pronounciation">
    <em>Sign Up</em>
  </h1>
</div>--%>   
	<%--  <div class="form-group">
      <!-- <input type="text" class="form-control" id="bkid" placeholder="Enter booking id" name="bkid"> -->
        <form:input path="custName" class="form-control" id="bkid" placeholder="Enter your name" name="custName"/>
    </div>  
    <div class="form-group">
     <!--  <input type="text" class="form-control" id="bkid" placeholder="Enter booking id" name="bkid"> -->
     <form:input path="bookingId" class="form-control" id="bkid" placeholder="Enter Booking id" name="bkid"/>
    </div>
    <div class="form-group">
      <!-- <input type="password" class="form-control" id="password" placeholder="Enter pn.no" name="password"> -->
       <form:input path="phoneNum"  class="form-control" id="password" placeholder="Enter your Phone Number" name="password"/>
    </div>
    <button type="submit" class="btn btn-default" value="Submit">Submit</button>
    <!-- <button type="submit" class="btn btn-default">Submit</button> -->
	<p>Not a registered user? <button class="btn btn-default" type="submit"><a href="signup.html">Sign Up </a></button> here</p> 
<%--   </form>
 --%>
 <%-- </form:form> --%>
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
	<!--Footer-->
<footer class="container-fluid bg-4 text-center">
  <p>&copy; Copy Rights Reserved</p> 
</footer>
</body>



</html>