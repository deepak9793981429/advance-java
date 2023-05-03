
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Bootstrap CSS -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <title>Student-Tracker-App</title>
     <script type="text/javascript">
     $(document).ready(function(){
     	$("#submit").click(function(){
     	  var first_name = $("#first_name").val();
     	  var last_name = $("#last_name").val();
     	  var username = $("#username").val();
     	  var email = $("#email").val();
     	  var password = $("#password").val();
     	  var contact = $("#contact").val();
     	  var str=/^[A-Za-z]+$/;
     	   
     	     $(".error").remove();
     	     
     	     if(first_name.length =="")  {
     	    	 $("#first_name").after('<span class="error">***Please Enter First Name***</span>');
     	    	 $("#first_name").focus();
     	    	 return false;
     	     }
     	    if(first_name.length <4)  {
    	    	 $("#first_name").after('<span class="error">**length of your first name must be between 3 and 20</span>');
    	    	 $("#first_name").focus();
    	    	 return false;
    	     }
     	   if(first_name.match(str))
    	    	true;
    	     else{
    	    	 $("#first_name").after('<span class="error">**Only Alphabet are allowed**</span>');
    	    	 $("#first_name").focus();
    	    	 return false;
    	     }
    	     
      	     if(first_name.length > 20){
     	    	 $("#first_name").after('<span class="error">Only enter  20charater..?</span>');
     	    	 $("#first_name").focus();
     	    	 return false;
     	     }
     	    if(last_name.length < 1){
    	    	 $("#last_name").after('<span class="error">**Please Enter Last Name**</span>');
    	    	 $("#last_name").focus();
    	    	 return false;
    	     }
     	     
     	     if(last_name.length < 4){
     	    	 $("#last_name").after('<span class="error">**length of your last name must be between 3 and 20</span>');
     	    	 $("#last_name").focus();
     	    	 return false;
     	     }
     	    if(last_name.match(str))
     	    	true;
     	     else{
     	    	 $("#last_name").after('<span class="error">**Only Alphabet are allowed**</span>');
     	    	 $("#last_name").focus();
     	    	 return false;
     	     }
     	     if(last_name.length > 20){
     	    	 $("#last_name").after('<span class="error">**Enter must be less than 20charater**</span>');
     	    	 $("#last_name").focus();
     	    	 return false;
     	     }
     	    if(username.length < 1){
   	    	 $("#username").after('<span class="error">**Please Enter Username**</span>');
   	    	 $("#username").focus();
   	    	 return false;
   	     }
    	     
    	     if(username.length < 4){
    	    	 $("#username").after('<span class="error">**length of your username must be between 3 and 20</span>');
    	    	 $("#username").focus();
    	    	 return false;
    	     }
    	     if(username.length > 20){
    	    	 $("#username").after('<span class="error">**Username must be less than 20charater**</span>');
    	    	 $("#username").focus();
    	    	 return false;
    	     }
     	        		
 		 if(password.length < 1){
	    	 $("#password").after('<span class="error">***Please Enter Password***</span>');
	    	 $("#password").focus();
	    	 return false;
	     }
	     if(password.length <4 || password.length >8){
	    	 $("#password").after('<span class="error">**length of your password must be between 3 and 20</span>');
	    	 $("#password").focus();
	    	 return false;
	     }
	     
	     if(contact.length<10 || contact,length>11){
	    	 $("#contact").after('<span class="error">**Invalid Your Phone number**</span> ');
	    	 $("#contact").focus();
	    	 return false; 
	     }
	     if(!isNaN(contact))
	    	return true;
	     else{
	    	 $("#contact").after('<span class="error">**Invalid Your Phone Number**</span> ');
	    	 $("#contact").focus();
	    	 return false;
	     }
	     

     	});
     })
            	
            
      </script>
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
     <div class="container-fuild text-center">
     <div class="row justify-content-center">
     <div class="col-md-6 text-center bg-secondary">
       <h1 class="text-warning display-4">Miconsol University</h1>
     <h3 class="text-white">Update</h3>
     <form action="EmployeeControllerServlet" method="get">
     <input type="hidden" name="Command" value="UPDATE"/>
     <input type="hidden" name="EmployeeId" value="${THE_EMPLOYEE.id }"/>
     <table>
      <tbody>
       <tr>
        <td><label class=" ml-5">First Name</label></td>
        <td><input type="text" id="first_name" name="firstName" value="${THE_EMPLOYEE.firstName}"></td>
      </tr>
      <tr>
       <td><label class=" ml-5">Last Name</label></td>
       <td><input type="text" id="last_name" name="lastName" value="${THE_EMPLOYEE.lastName}"/></td>
     </tr>
     <tr>
       <td><label class=" ml-5">Username</label></td>
       <td><input type="text" id="username" name="username" value="${THE_EMPLOYEE.username}"/></td>
     </tr>
     <tr>
       <td><label class=" ml-5">Password</label></td>
       <td><input type="text" id="password" name="password" value="${THE_EMPLOYEE.password}"/></td>
     </tr>
     <tr>
       <td><label class=" ml-5">Contact</label></td>
       <td><input type="text" id="contact" name="contact" value="${THE_EMPLOYEE.contact}"/></td>
     </tr>
     <tr>
       <td><label></label></td>
       <td><input type="submit" id="submit" value="Update" class="save" onClick="return validateForm()" /></td>
     </tr>
      </tbody>   
     </table>
     </form>
    <div class="align-content-center">
     <a href="EmployeeControllerServlet" class="btn  btn-outline-warning mb-5 "><i class="fas fa-arrow-left text-danger" aria-hidden="true"></i><span>Back to List</span></a>
     </div>
     </div>
     </div>
     </div>
    
                           <!-- Optional JavaScript -->
                      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>