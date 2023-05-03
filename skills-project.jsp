<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<title>Insert title here</title>
</head>
<body>
 <c:import url="navbar-project.jsp"></c:import>
  <section class="bg-light">
    <div class="container">
      <div class="row py-3">
        <div class="col-lg-12 text-center px-5 mt-3 ">
          <h1 class="display-2 text-warning font-italic ">Skills</h1>
          <p class="lead text-secondary">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero, sequi.</p>
          <a href="#">Learn More</a>
        </div>
      </div>
    </div>
  </section> 
    <!-- start Skills Section -->
   <section class="bg-light">
    <div class="Container-fuild">
      <div class="row justify-content-center">
        <div class="col-lg-4 col-sm-10 text-center max-auto mb-5">
          <li class="fas fa-desktop fa-6x text-warning mb-3"></li>
          <h2 class="text-secondary">Development</h2>
          <p class="text-muted my-4">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eaque sunt unde alias
            amet saepe placeat necessitatibus aspernatur aut sit quis.</p>
          <a href="#" class="btn btn-outline-warning">Learn More</a>
        </div>
        <div class="col-lg-4 col-sm-10 text-center max-auto mb-5">
          <li class="fas fa-edit fa-6x text-warning mb-3"></li>
          <h2 class="text-secondary">Design</h2>
          <p class="text-muted my-4">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eaque sunt unde alias
            amet saepe placeat necessitatibus aspernatur aut sit quis.</p>
          <a href="#" class="btn btn-outline-warning">Learn More</a>
        </div>
        <div class="col-lg-4 col-sm-10 text-center max-auto mb-5">
          <li class="fas fa-cogs fa-6x text-warning mb-3"></li>
          <h2 class="text-secondary">Creativity</h2>
          <p class="text-muted my-4">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eaque sunt unde alias
            amet saepe placeat necessitatibus aspernatur aut sit quis.</p>
          <a href="#" class="btn btn-outline-warning">Learn More</a>
        </div>
      </div>     
  </section>
  <c:import url="footer-project.jsp"></c:import>
  <!-- end Skills Section --> 
 
  <script src="https://code.jquery.com/jquery-3.2.1.sli"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>