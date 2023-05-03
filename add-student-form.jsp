<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
<html>
<head>

 <!-- Bootstrap CSS -->
 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <title>Student-Tracker-App</title>
    <script type="text/javascript">
      function validateForm(){
      var fName = document.myForm.firstName.value;
      
      if(fName == ""){
        alert("Please Enter First Name"); 
        document.myForm.firstName.value="";
        document.myForm.lastName.value="";
        document.myForm.email.value="";
         document.myForm.firstName.focus();
        return false;
      }
       if(!isNaN(fName)){
    	  alert("Please Enter Valid Name!");
    	  document.myForm.firstName.value="";
    	  document.myForm.firstName.focus();
    	  return false;
      } 
       if(fName.length<=3){
    	  alert("Please Enter Atleast three char long!");
    	  document.myForm.firstName.value="";
    	  document.myForm.firstName.focus();
    	  return false;
      }
      var lName = document.myForm.lastName.value;
      if(lName == ""){
        alert("Please Enter Last Name"); 
         document.myForm.lastName.focus();
        return false;
      }
       if(!isNaN(lName)){
    	  alert("Please Enter Valid Name!");
    	  document.myForm.lastName.value="";
    	  document.myForm.lastName.focus();
    	  return false;
      } 
      if(lName.length<=3){
    	  alert("Please Enter Atleast three char long!");
    	  document.myForm.lastName.value="";
    	  document.myForm.lastName.focus();
    	  return false;
      } 
      var email = document.myForm.email.value;
      if(email == ""){
        alert("Please Enter email");
  	  document.myForm.email.focus();
        return false;
      }
      if(email.length<3){
    	  alert("Please Enter Atleast three char long!");
    	  document.myForm.email.value="";
    	  document.myForm.email.focus();
    	  return false;
   } 
      if(email.indexOf("@")== -1){
    	  alert("Email must have '@' character..?");
    	  document.myForm.email.value="";
    	  document.myForm.email.focus();
    	  return false;
      }
 }
   </script>
                  
   <style type="text/css">
       label{
         font-size:20px;
         font-weight:bold;
         width:130px;
         display:block;
         text-align:right;
         margin-left:10px;
         margin-top:8px;
         margin-bottom:8px;
       }
       span{
           font-size:20px;
           margin:10px;
       }
       input{
       padding:10px;
       margin:7px;
        margin-left:100px;
       }
       .error{
           color:red;
           margin-left:10px;
       }
       
         body{
  background: #ddd;
}        
 </style>
    
</head>
<body class="h">
     <div class="container-fuild ">
     <div class="row justify-content-center">
     <div class="col-md-6 bg-info text-center">
       <h1 class="text-warning display-4">Miconsol University</h1>
     <h3 class="text-secondary">Add Student</h3>
     <form  action="StudentControllerServlet" method="get"  name="myForm"  >
     <input type="hidden" name="command" value="ADD"/>
      <table class=" px-2 inner text-center">
      <tr>
      <td><label >First Name</label></td>
      <td><input  type="text"  name="firstName"/></td>
      </tr>
      
      <tr>
      <td><label>Last Name</label></td>
      <td><input  type="text"  name="lastName"/></td>
      </tr>
      
      <tr>
      <td><label>Email</label></td>
      <td><input  type="text" name="email"/></td>
      </tr>
      
      <tr>
      <td><label></label></td>
      <td><button type="submit"  class="btn btn-success btn-block text-light ml-5" onClick="return validateForm()" >Save</button></td>
      </tr>
      
      </table>
     </form>
     <div class="align-conten-center">
     <a href="StudentControllerServlet" class="btn  btn-outline-warning mb-5 ml-auto "><i class="fas fa-arrow-left text-danger" aria-hidden="true"></i><span>Back to List</span></a>
     </div>
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