<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
<html>
<head>

 <!-- Bootstrap CSS -->
 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <title>Student-Tracker-Update</title>
    <!-- <script type="text/javascript">
            $(document).ready(function(){
            	$("#submit").click(function(){
            	
            		var first_name = $("#first_name").val();
            		var last_name = $("#last_name").val();
            		var email = $("#email").val();
            		var password = $("#password").val();
            		$(".error").remove();
            		
            		if(first_name.length < 1){
            			$("#first_name").after('<span class="error">**Please Enter First Name**</span>');
            			$("#first_name").focus();
            		  return false
            		}
            		
            		if(!isNaN(first_name)){
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
            		  } 
            		if(password.length < 8){
            			$("#password").after('<span class="error">Enter long password 8..?</span');
            			$("#password").focus();
            			return false;
            		}
            	});	
            }) 
      </script> -->
                  
 <style type="text/css">
       label{
         font-size:20px;
         font-weight:bold;
         width:130px;
         display:block;
         text-align:right;
         margin-left:70px;
         margin-top:8px;
         margin-bottom:8px;
       }
       span{
           font-size:20px;
           margin:10px;
           
       }
       input{
       padding:10px;
       margin :7px;
        margin-left:80px;
       }
       .error{
           color:red;
           margin-left:10px;
       }
       
         body{
  background: #ddd;
}   
button{
    margin-left:150px;
}     
 </style>
    
</head>
<body class="h">
     <div class="container-fuild">
     <div class="row ">
     <div class="col-md-8 bg-secondary">
       <h1 class="text-warning display-4 text-center">Miconsol University</h1>
     <h3 class="text-white text-center"></h3>
     <form  action="StudentControllerServlet2" method="get"   >
      <input type="hidden" name="command" value="ADD"/>
      <table class=" px-2 inner">
      <tr>
      <td><label >First Name</label></td>
      <td><input  type="text" id="first_name"  name="firstName"/></td>
      </tr>
      
      <tr>
      <td><label>Last Name</label></td>
      <td><input  type="text" id="last_name"  name="lastName"/></td>
      </tr>
      
      <tr>
      <td><label>Email</label></td>
      <td><input  type="text" id="email" name="email"/></td>
      </tr>
       <tr>
      <td><label>Password</label></td>
      <td><input  type="text" id="password" name="pass"/></td>
      </tr> 
      
      <tr>
      <td><label></label></td>
       <td><button type="submit" id="submit" class="btn btn-success btn-lg text-light">Submit</button></td>
      </tr>
      
      </table>
     </form>
     
     </div>
     </div>
     </div>
    
              <!-- Optional JavaScript -->
                      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>