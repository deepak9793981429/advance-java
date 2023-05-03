    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <title>Student-Tracker-App</title>
</head>
<body>
              
          
           <div class="container">      
           <div class="row justify-content-center">
           <div class="col text-center mx-4">
           <h1 class="display-3 font-weight-bold text-warning">Micronsol University</h1>
           <h3 class="lead display-4 text-danger">Employee List</h3>
           <hr class="bg-danger p-1">
           <p class="text-muted"> means a list of names of persons arranged in order of acceptance 
            by the Harris County Sheriff's Department as provided by these rules, who have met all 
            minimum basic requirements for employment, and who are entitled to have their 
            names certified by authorities for original appointment under these rules.</p>
                     
           <nav class="navbar navbar-expand navbar-light  ">      
           <button type="button" class="navbar-toggler-lg bg-block text-light" data-toggle="collapse" data-target="#nav">
           <span class="navbar-toggler-icon"></span>
           </button>
           <div class="collapse " id="nav">
           <ul class="navbar-nav px-5">
           <li class="nav-item"><a class="nav-link text-light bg-info text-uppercase font-weight-bold px-3
           " title="Click" href="StudentControllerServlet2">Client-List</a></li>
           <li class="nav-item"><a class="nav-link text-light bg-info text-uppercase font-weight-bold px-3" title="Click" href="error-form.html">Skills
           </a></li>
           <li class="nav-item "><a class="nav-link  text-light bg-info text-uppercase font-weight-bold px-3" title="Click" href="add-student-form.jsp">Add-Profile</a>
           <li class="nav-item "><a class="nav-link  text-light bg-info text-uppercase font-weight-bold px-3" title="Click" href="add-employee-form.jsp">Registration</a>
           <li class="nav-item "><a class="nav-link  text-light bg-info text-uppercase font-weight-bold px-3" title="Click" href="login-form-jquery.html">Log-In</a>
           </li>
           </ul>
           </div>
           </nav>
                              <table class="table">
                              <tr class="bg-primary text-white">
                              <th>id</th>
                              <th>First Name</th>
                              <th>Last Name</th>
                              <th>Username</th>
                              <th>password</th>
                              <th>Contact</th>
                              <th>Action</th>
                              </tr>
                              <!-- create updateEmployee method -->
                              <c:forEach var="tempEmployee" items="${EMPLOYEE_LIST}">
                               <c:url var="MCK" value="EmployeeControllerServlet">
                               <c:param name="Command" value="LOAD"/>
                               <c:param name="EmployeeId" value="${tempEmployee.id}"/>
                               </c:url>
                               <!-- create deleteEmployee method -->
                               <c:url var="MBK" value="EmployeeControllerServlet">
                               <c:param name="Command" value="DELETE"/>
                               <c:param name="EmployeeId" value="${tempEmployee.id}"/>
                               </c:url>
                               
                               <tr>
                               <td>${tempEmployee.id}</td>
                               <td>${tempEmployee.firstName}</td>
                               <td>${tempEmployee.lastName}</td>
                               <td>${tempEmployee.username}</td>
                               <td>${tempEmployee.password}</td>
                                <td>${tempEmployee.contact}</td>
                               <td>
                               <a href="${MCK}">Update</a>/
                               <a href="${MBK}"onclick="if(!(confirm('Are your sure to delete this data..?'))) return false">Delete</a>
                               </td>
                               </tr>
                               </c:forEach>
                               </table>
     <div class="align-content-center">
     <a href="StudentControllerServlet2" class="btn  btn-outline-warning mb-5 "><i class="fas fa-arrow-left text-danger" aria-hidden="true"></i><span>Back to Student-list</span></a>
     </div>             
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