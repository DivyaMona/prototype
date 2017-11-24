<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Feedback</title>
<body>
	<script type="text/javascript"
		src="https://cf-4053.kxcdn.com/conversational-form/0.9.6/conversational-form.min.js"
		crossorigin></script>
	<link rel="stylesheet" href="./chatbox.css">
	<div id="chatbox">
		<form id="my-form-element" cf-form
			action="https://hooks.zapier.com/hooks/catch/2670526/iv9cf9/"
			method="post">
			<input type="text"
				cf-questions="Your Feedback  has been submitted successfully! Would you like to post your review to the World Outside?"
				id="submitmsg" name="comment">
				 <input type="text"
				cf-questions="SHARE your review on your favourite platforms" id="share" name="share">
				<input type="submit" class="btn btn-default">Thank you</button>
</form>
</div>

</body>