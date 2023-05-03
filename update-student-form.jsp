
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Bootstrap CSS -->
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
         width:115px;
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
       
         body{
  background: #ddd;
}      

    </style>
    
</head>
<body class="h">
     <div class="container-fuild text-center">
     <div class="row justify-content-center">
     <div class="col-md-6 text-center bg-info">
       <h1 class="text-warning display-4">Miconsol University</h1>
     <h3 class="text-secondary">Update</h3>
     <form action="StudentControllerServlet" method="get" name="myForm">
     <input type="hidden" name="command" value="UPDATE"/>
     <input type="hidden" name="StudentId" value="${THE_STUDENT.id }"/>
     <table>
      <tbody>
       <tr>
        <td><label class=" ml-5">First Name</label></td>
        <td><input type="text" name="firstName" value="${THE_STUDENT.first_Name}"></td>
      </tr>
      <tr>
       <td><label class=" ml-5">Last Name</label></td>
       <td><input type="text" name="lastName" value="${THE_STUDENT.last_Name}"/></td>
     </tr>
     <tr>
       <td><label class=" ml-5"">Email</label></td>
       <td><input type="text" name="email" value="${THE_STUDENT.email}"/></td>
     </tr>
     <tr>
       <td><label></label></td>
       <td><input type="submit" value="Update" class="save" onClick="return validateForm()" /></td>
     </tr>
      </tbody>   
     </table>
     </form>
    <div class="align-conten-center">
     <a href="StudentControllerServlet" class="btn  btn-outline-warning mb-5 "><i class="fas fa-arrow-left text-danger" aria-hidden="true"></i><span>Back to List</span></a>
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