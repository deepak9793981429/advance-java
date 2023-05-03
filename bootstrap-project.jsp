<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="title icon" type="images/png" href="./images/images.jpg">
  <link rel="stylesheet" href="./mystyle.css">

  <!-- Bootstrap CSS -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <title>Project Intro</title>
<script type="text/javascript">
<script type="text/javascript">
$(document).ready(function(){
	$("#submit").click(function(){
	
		var first_name = $("#name").val();
		/* var last_name = $("#last_name").val();
		var email = $("#email").val(); */
		$(".error").remove();
		
		if(name.length < 1){
			$("#name").after('<span class="error">**Please Enter First Name**</span>');
			$("#name").focus();
		  return false;
		}
		
		/* if(!isNaN(first_name)){
			$("#first_name").after('<span class="error">Invalid First Name..?</span>');
			$("#first_name").focus();
			return false;
		
		}
		if(last_name.length < 1){
			$("#last_name").after('<span class="error">**Please Enter Last Name**</span>');
			$("#last_name").focus();
			return false;
		}
		if(!isNaN(last_name)){
			$("#last_name").after('<span class="error">Invalid First Name..?</span>');
			$("#last_name").focus();
			return false;
		}
		if(email.length < 1){
			$("#email").after('<span class="error">Please Enter email</span>');
			$("#email").focus();
			return false
	
		}else{
		
		    regEx = /^([_\-\.0-9a-zA-Z]+)@([_\-\.0-9a-zA-Z]+)\.([a-zA-Z]){2,7}$/;
		    var validEmail = regEx.test(email);
		    if(!validEmail){
		    	$("#email").after('<span class="error">Enter a valid email..?</sapan>');
		    	return false;
		    }
		  }  */
	});	
}) 
   </script>
      
   <style type="text/css">
  .btn{
  border-radius: 10rem !important;
  padding: 1.rem !important;
}
#di1{
 background: linear-gradient(to right,rgba(246, 105, 241, 0.2),rgb(192, 255, 238))
}
imag{
 algin:center;
 border:1px solid black;
}
.section{
  background: linear-gradient(to right,rgba(244, 255, 37, 0.2),rgb(251, 241, 168))
}
  </style>
</head>
<body>
 
  <c:import url="navbar-project.jsp"></c:import>
  <header>
    <div class="container-fliud">
      <div class="row align-items-center  bg-info " style="height: 90vh;">
        <div class="col-sm-12 text-center">
          <h1 class="display-2 text-capitalize ">
            <span class="text-warning">Pure Bootstrap</span>
            <span class="text-white font-weight-bold">Website</span>
          </h1>
          <h2 class="font-weight-light font-italic text-light">
            The World Wide Web was invented by British scientist Tim Berners-Lee in 1989 while working at CERN
          </h2>
          <a href="#" class="btn btn-warning btn-lg px-4 m-3" title="Click">Pres Here</a>
          <a href="#" class="btn btn-danger btn-lg px-4 m-3" title="Click">Pres Here</a>
        </div>
      </div>
    </div>
  </header>
   
 <c:import url="footer-project.jsp"></c:import>
 
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>

</html>