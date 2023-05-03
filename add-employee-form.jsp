<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <title>Student-Tracker-App</title>
       <script type="text/javascript">
     $(document).ready(function(){
     	$("#submit").click(function(){
     	  var first_name = $("#first_name").val();
     	  var last_name = $("#last_name").val();
     	  var username = $("#username").val();
     	  var password = $("#password").val();
     	 var confirmpassword = $("#confirmpassword").val();
     	  var contact = $("#contact").val();
     	  var str=/^[A-Za-z]+$/;
     	   
     	     $(".error").remove();
     	     
     	     if(first_name.length <1 || first_name.length > 20)  {
     	    	 $("#first_name").after('<span class="error">***Please Enter First Name***</span>');
     	    	 $("#first_name").focus();
     	    	 return false;
     	     }
     	    if(first_name.length <4)  {
    	    	 $("#first_name").after('<span class="error">**Enter  must be 4charater**</span>');
    	    	 $("#first_name").focus();
     	    	
    	    	 return false;
    	     }
     	   if(first_name.match(str))
    	    	true;
    	     else{
    	    	 $("#first_name").after('<span class="error">**Only Alphabet are allowed**</span>');
    	    	 $("#first_name").focus();
    	    	 $("#first_name").empty();
    	    	 return false;
    	     }
    	     
      	     if(first_name.length > 20){
     	    	 $("#first_name").after('<span class="error">Only enter  20charater..?</span>');
     	    	 $("#first_name").focus();
     	    	 
     	    	 return false;
     	     }
     	    if(last_name.length ==""){
    	    	 $("#last_name").after('<span class="error">**Please Enter Last Name**</span>');
    	    	 $("#last_name").focus();
    	    	 return false;
    	     }
     	     
     	     if(last_name.length < 4 || last_name.length > 20){
     	    	 $("#last_name").after('<span class="error">**length of last name must be between 3 and 10</span>');
     	    	 $("#last_name").focus();
     	    	 $("#last_name").empty();
     	    	 return false;
     	     }
     	    if(last_name.match(str))
     	    	true;
     	     else{
     	    	 $("#last_name").after('<span class="error">**Only Alphabet are allowed**</span>');
     	    	 $("#last_name").focus();
     	    	 return false;
     	     }
     	    if(username.length ==""){
   	    	 $("#username").after('<span class="error"> **Username is missing</span>');
   	    	 $("#username").focus();
   	    	 return false;
   	     }
    	     
    	     if(username.length < 3 || username.length > 10){
    	    	 $("#username").after('<span class="error">**length of username must be between 3 and 10</span>');
    	    	 $("#username").focus();
    	    	 $("#username").empty();
    	    	 return false;
    	     }
 		 if(password.length<1){
	    	 $("#password").after('<span class="error">**Please Fill the password</span>');
	    	 $("#password").focus();
	    	 return false;
	     }
	     if(password.length <4 || password.length >9){
	    	 $("#password").after('<span class="error"> length of your password must be between 3 and 8</span>');
	    	 $("#password").focus();
	    	 $("#username").empty();
	    	 return false;
	     }
	     if (password != confirmpassword) {
	    	 $("#confirmpassword").after('<span class="error">**Password did not Match</span>');
	    	 $("#confirmpassword").focus();
	         return false; 
	     }
		     if(contact.length<10){
	    	 $("#contact").after('<span class="error">**Contact_No must be  10**</span> ');
	    	 $("#contact").focus();
	    	 $("#contact").empty();
	    	 return false; 
	     }
	     if(contact,length>10){
	    	 $("#contact").after('<span class="error">**length of Password must be  10**</span> ');
	    	 $("#contact").focus();
	    	 $("#contact").empty();
	    	 return false;
	     }	     
	     if(!isNaN(contact))
	    	 true;
	     else{
	    	 $("#contact").after('<span class="error">**Invalid Your Contact No..**</span> ');
	    	 $("#contact").focus();
	    	 $("#contact").empty();
	    	 return false;
	     }
	     

     	});
     })
            	
            
      </script>
      <style>
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
.btn{
   margin-left:150px;
}
.inner{
     margin-left:200px;
}
</style> 
</head>
<body>
         <div class="container">
         <div class="row ">
         <div class="col-lg-10  bg-light mx-4">
         <h1 class="display-4 text-warning text-center mr-5">Miconsol Univarsity</h1>
         <h3 class="text-secondary px-3 t  inner" >Registration Form Fill</h3>
                     <form action="EmployeeControllerServlet" method="get">
                     <input type="hidden" name="Command" value="ADD"/>
                     <table class="table-white" >
                     <tr>
                     <td><label for="first_name">First Name</label></td>
                      <td><input type="text" id="first_name" placeholder="Enter first name" name="firstName"/></td> 
                     </tr>
                     <tr>
                     <td><label for="password">Last Name</label></td>
                     <td><input type="text" id="last_name" placeholder="Enter last name" name="lastName"/></td>
                     </tr>
                     <tr>
                     <td><label for="username">Username</label></td>
                     <td><input type="text" id="username" placeholder="Enter Username" name="username"/></td>
                     </tr>
                     <tr>
                     <td><label for="password">Password</label></td>
                     <td><input type="password" id="password" placeholder="Enter password" name="password"/></td>
                     </tr> 
                     
                     <tr>
                     <td><label for="password">ConfirmPassword</label></td>
                     <td><input type="password" id="confirmpassword" placeholder="Enter password"/></td>
                     </tr> 
                     <tr>
                     <td><label for="contact">Contact</label></td>
                     <td><input type="text" id="contact" placeholder="Enter contact" name="contact"/></td>
                     </tr>
                     <tr>
                     <td><label></label></td>
                      <td><button type="submit" id="submit"  class="btn btn-primary btn-lg my-3" onClick="return validateForm()" >Submit</button></td>
                     </tr>
                     </table>
                     </form>
          
         </div>
         </div>
         </div>      
 
                      <!-- Optional JavaScript 
                     jQuery first, then Popper.js, then Bootstrap JS-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script> 
</body>
</html>