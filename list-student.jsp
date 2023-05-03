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
</head>
   
<body>
      <div class="container-fuild">
       <div class="row justify-content-center">
        <div class="col-lg-8 bg-info">
         <h1 class="display-4 text-danger"><i class="fas fa-edit fa-2x text-danger"></i> Client Details</h1>
         <table class="table text-center table-hover mt-4 bg-light table-bordered table-striped" >
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
              <c:url var="templink" value="StudentControllerServlet1">
              <c:param name="command" value="LOAD"/>
              <c:param name="StudentId" value="${tempStudent.id}"/>
              </c:url>
              
               <!-- setup a link to delete a student -->
              <c:url var="deletelink" value="StudentControllerServlet1">
              <c:param name="command" value="DELETE"/>
              <c:param name="StudentId" value="${tempStudent.id}"/>
              </c:url>
              
            <tr>
              
             <td> ${tempStudent.first_Name}</td>
             <td>${tempStudent.last_Name}</td>
             <td class="text-danger btn-link">${tempStudent.email}</td>
             <td>
             <a href="${templink}">Update</a>/
             <a href="${deletelink}" onclick="if(!(confirm('Are your sure to delete this data..?'))) return false">Delete</a>
             </td>
            </tr>
             </c:forEach>
       </tbody>
      </table>
      <a onclick="window.location.href='add-student-form.jsp; return false;'" class="btn btn-success btn-lg">Add Student<a/>
      <div class="text-light  my-2">
      <a href="login-form-jQuery.html" class="btn  btn-danger  ml-auto "><i class="fas fa-arrow-left text-white" aria-hidden="true"></i><span>Log Out</span></a>
       </div>
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>