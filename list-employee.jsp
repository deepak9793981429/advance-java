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
                     
                       <table class="table">
                              <tr class="bg-primary text-white">
                              <th>id</th>
                              <th>First Name</th>
                              <th>Last Name</th>
                              <th>Email</th>
                              <th>password</th>
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
                               <tr>
                               <td>${tempEmployee.id}</td>
                               <td>${tempEmployee.firstName}</td>
                               <td>${tempEmployee.lastName}</td>
                               <td>${tempEmployee.email}</td>
                               <td>${tempEmployee.password}</td>
                               <td>
                               <a href="${MCK}">Update</a>/
                               <a href="${MBK}"onclick="if(!(confirm('Are your sure to delete this data..?'))) return false">Delete</a>
                               </td>
                               </tr>
                               </c:url>
                              </c:forEach>
                       </table>
                     
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