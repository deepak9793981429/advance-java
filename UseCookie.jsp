<head>

 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <title>Student-Tracker-App</title>
     <script type="text/javascript">
     function validateForm(){
         var fName = document.myForm.username.value;
          
         if(fName == ""){
           alert("Please Enter username"); 
           document.myForm.username.value="";
           document.myForm.pass.value="";
            document.myForm.username.focus();
           return false;
         }
          if(!isNaN(fName)){
       	  alert("Please Enter Valid username!");
       	  document.myForm.username.value="";
       	  document.myForm.username.focus();
       	  return false;
         } 
          if(fName.length<=3){
       	  alert("Please Enter Atleast three char long!");
       	  document.myForm.username.value="";
       	  document.myForm.username.focus();
       	  return false;
         }
         var lName = document.myForm.pass.value;
         if(lName == ""){
           alert("Please Enter password"); 
            document.myForm.pass.focus();
           return false;
         }
         
         if(lName.length !==8){
       	  alert("Please Enter  '8'..!");
       	  document.myForm.pass.value="";
       	  document.myForm.pass.focus();
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
     <h3 class="text-secondary">Login form</h3>
     
     <form action="SendCookie" method="post"  class="py-3 text-center" name="myForm">
     <input type="hidden" name="command" value="ADD"/>
      <table class="text-center px-2 inner">
      <tr>
      <td><label >User Name</label></td>
      <td><input  type="text"  name="username"/></td>
      </tr>
      <tr>
      <td><label>Password</label></td>
      <td><input  type="password"  name="pass"/></td>
      </tr>
      
      
      
      <tr>
      <td><label></label></td>
      <td><button type="submit" onClick="return validateForm()" class="btn btn-success btn-block text-light ml-5">Click Here</button></td>
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