<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <title>Student-Tracker-App</title>
    <style type="text/css">
    #a1{
       margin-left:95%;
    }
     #a2{
       margin-left:80%;
    }
    </style>
</head>
   
<body>
      <div class="container-fuild">
       <div class="row justify-content-center">
        <div class="col bg-info">
         <h1 class="display-4 text-danger mb-3"><i class="fas fa-edit fa-2x text-danger "></i> Client Details</h1>
        <!--   <a id="a3" href="EmployeeControllerServlet" class="btn text-light" title="Registration list" ><i class="fa-solid fa-circle-user fa-2x text-light" title="Registration List"></i>Profile</a> -->
         <nav class="navbar navbar-expand-md navbar-light ">
          
          <button type="button" class="navbar-toggler-lg bg-block text-light" data-toggle="collapse" data-target="#nav" title="Click">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse " id="nav">
          <ul class="navbar-nav px-3">
          <li class="nav-item"><a class="nav-link text-light bg-info text-uppercase font-weight-bold px-3
          " title="Click" href="EmployeeControllerServlet">Employee-List</a></li>
          <li class="nav-item"><a class="nav-link text-light bg-info text-uppercase font-weight-bold px-3" title="Click" href="error-form.html">Skills
          </a></li>
          <li class="nav-item "><a class="nav-link  text-light bg-info text-uppercase font-weight-bold px-3" title="Click" href="add-student-form.jsp">Add-Student</a>
          <li class="nav-item "><a class="nav-link  text-light bg-info text-uppercase font-weight-bold px-3" title="Click" href="add-employee-form.jsp">Registration</a>
          <li class="nav-item "><a class="nav-link  text-light bg-info text-uppercase font-weight-bold px-3" title="Click" href="login-form-jquery.html">Log-In</a>
        </li>
      </ul>
      </div>
     <li><a onclick="window.location.href='add-student-form.jsp; return false;'" class="btn btn-link btn-lg mx-3 text-light bg-info text-uppercase font-weight-bold " title="Click">Add Student<a/></li>
     <a  onclick="window.location.href='EmployeeControllerServlet; return false;'" class="btn btn-link btn-lg text-light bg-info text-uppercase font-weight-bold " title="Click">Employee List<a/>
    </nav>
      <div class="text-light  my-2">
       </div>
         <table class="table text-center table-hover mt-2 bg-light table-bordered table-striped" >
        <thead class="text-warning">
         <tr>
           
            <th>First Name </th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Action</th>
         </tr>
        </thead>
       <tbody>
           
           <c:forEach var="tempStudent" items="${STUDENT_LIST}">
              <!-- setup a link for eah student -->
              <c:url var="templink" value="StudentControllerServlet2">
              <c:param name="command" value="LOAD"/>
              <c:param name="StudentId" value="${tempStudent.id}"/>
              </c:url>
              
               <!-- setup a link to delete a student -->
              <c:url var="deletelink" value="StudentControllerServlet2">
              <c:param name="command" value="DELETE"/>
              <c:param name="StudentId" value="${tempStudent.id}"/>
              </c:url>
              
            <tr>
              
             <td> ${tempStudent.firstName}</td>
             <td>${tempStudent.lastName}</td>
             <td class="text-danger btn-link">${tempStudent.email}</td>
             <td>
             <a href="${templink}">Update</a>/
             <a href="${deletelink}" onclick="if(!(confirm('Are your sure to delete this data..?'))) return false">Delete</a>
             </td>
            </tr>
             </c:forEach>
       </tbody>
      </table>
      <a href="login-form-jquery.html" class="btn  btn-danger   mb-5" title="Click"><i class="fas fa-arrow-left text-white"  aria-hidden="true"></i><span>Log Out</span></a>
       </div>
     <section class="footer bg-secondary">
      <div class="continer py-3 text-white text-center">
        <p>Deepak design page</p>
         <i class="fab fa-whatsapp text-success fa-2x"></i>
         <i class="fab fa-facebook fa-2x text-primary"></i>
         <i class="fab fa-instagram fa-2x text-danger"></i>
         <i class="fab fa-twitter fa-2x text-info"></i>
        <div class="py-2">
          <a href="#" class="text-link">deepakkumar4848@gamil.com</a>
        </div>
      </div>
    </section>
   </div>
  </div>
   
 
                      <!-- Optional JavaScript -->
                      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
</body>
</html>