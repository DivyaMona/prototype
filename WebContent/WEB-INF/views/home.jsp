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
<!-- <link rel="stylesheet" href="resources/css/font-awesome.min.css"> -->
 <link rel="stylesheet" href="resources/font-awesome/css/font-awesome.min.css"> 
  <!-- <link rel="stylesheet" href="resources/font-awesome/fonts/fontawesome-webfont.ttf"> --> 
 
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
 .bg-4 { 
      background-color: #2f2f2f;
      color: #fff;    padding: 15px 0px 15px 0px; position:fixed;bottom:0; left:0; width:100%;
  }
  
  .sandbox-correct-pronounciation {
  padding: 1em 0 1em 0;
}
	</style>
	<script>
function myFunction() {
    window.open("static/general.html");
}
</script>
</head>
<body>
  <div class="container-fluid">
	<div class=" window feedwindow">
	
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
      <li><a href="#">Menu</a></li>
      <li><a href="#">Reservation</a></li>
      <li><a href="#">Drinks Menu</a></li>
       <li><a href="/SpringCrudExample/logout">Sign Out</a></li>
    </ul>
  </div>
</div>
</nav> 
<br>
<br>
<br>
<br>
<br>
<div id="rectmenu" class=" feedrect">
<form:form method ="POST" action = "/SpringCrudExample/submitFeedback" id="signup-form">

<input id="booking_id" name="booking_id" type="hidden" value='${command.booking_id}'/>
<input id="cust_id" name="cust_id" type="hidden" value='${command.cust_id}'/>
<input id="rateValueInput" name="rateValueInput" type="hidden" value="-1"/>

 <div class="sandbox sandbox-correct-pronounciation">
  <h1 class="heading heading-correct-pronounciation">
    <em id="feedback">VoxMos Feedback Assistance</em>
  </h1>
</div>
<h3> ${command.name}!! <span id="bell"><a href="static/RetrieveIssue.html" target="_blank"><img src="resources/images/bell.png" width="30px" height="30px"></a></span></h3>
	<div class="form-group row">
	 <label for="bookingid" class="col-xs-9 col-sm-3 col-md-3 col-form-label">Booking-Id:</label>
     
    <div class="col-xs-9 col-sm-9">
	<input type="text" class="form-control form-control-plaintext" name="bookingid" value='${command.booking_id}' readonly>
    </div>
    </div>
	
	<div class="form-group row">
	 <label for="bookingid" class="col-xs-9 col-sm-3 col-md-3 col-form-label">Your Itinenary for today:</label>
     
    <div class="col-sm-9 col-xs-9">
       <textarea type="text" class="form-control form-control-plaintext" readonly>Morning : Site Visit &#10;Evening : Camp Fire</textarea>

    </div>
    </div>

		
	
   
    <div class="form-group">
	<label for="feedback">Your Feedback</label>
      <textarea class="form-control expandable" type="text" id="myIn" rows="2"></textarea>
    </div>
    	<div class="form-group">
	<label for="feedback">rate your experience</label>
	<div class="star-rating">
        <span class="fa fa-star-o" data-rating="1"></span>
        <span class="fa fa-star-o" data-rating="2"></span>
        <span class="fa fa-star-o" data-rating="3"></span>
        <span class="fa fa-star-o" data-rating="4"></span>
        <span class="fa fa-star-o" data-rating="5"></span>
        <input type="hidden" name="whatever1" class="rating-value" value="0">
      </div>

</div>
 <input type = "submit" class="btn btn-default" value = "Submit"/>       
   <br>
<br>
</form:form>
</div>
<div class="chat">
<a href="#" onclick="myFunction()"><img src="resources/images/chat.jpg"></a>
 <h4> Share With: </h4>
  <!-- <img src="resources/images/tripAdvisor.png" width="35px">&nbsp; -->
  <img src="resources/images/tripAdvisor.png" width="35px">&nbsp;
  <img src="resources/images/facebook-icon.png" width="35px">&nbsp;
  <img src="resources/images/download.png" width="35px">&nbsp;
  <img src="resources/images/twitter.png" width="35px">&nbsp;
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
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
<script>
var $star_rating = $('.star-rating .fa');

var SetRatingStar = function() {
  return $star_rating.each(function() {
    if (parseInt($star_rating.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
      return $(this).removeClass('fa-star-o').addClass('fa-star');
    } else {
      return $(this).removeClass('fa-star').addClass('fa-star-o');
    }
  });
};

$star_rating.on('click', function() {
  $star_rating.siblings('input.rating-value').val($(this).data('rating'));
  var  rateValue = $(this).data('rating');
  alert(rateValue);
  $('#rateValueInput').val(rateValue);
  return SetRatingStar();

});
SetRatingStar();
$(document).ready(function() {
/* $('form').submit(function(e)){
	e.preventDefault();
	var res = v;
	alert(res); 
}*/
	
});
</script>
  
 
 
 
  

   </body>
  </html>