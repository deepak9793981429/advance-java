<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="title icon" type="images/png" href="./images/images.jpg">
  <link rel="stylesheet" href="./mystyle.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <title>Project Intro</title>
</head>
<body>
 
  <c:import url="navbar-project.jsp"></c:import>
   <section>
    <div class="container-fliud my-4 ">
      <div class="row justify-content-center ">
        <div class="col-sm-6 text-center">
          <h1 class="display-2 text-capitalize mb-3">
            <span class="text-warning">Projects</span>
          </h1>
          <p class=" font-italic">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ad odio et nulla id sequi facere nam modi corporis
            aliquid eum!
          </p>
        </div>
      </div>
    </div>
  </section>
  <section class="table-hover mx-3 ">
    <div class="row justify-content-center">
      <div class="col-lg-3 col-sm-10 text-center max-1 mb-5">
        <div class="inner">
        <img src="./png/images2.jpg" class="img-thambnail " style="width: 350px; height: 230px;">
      </div>
        <h2 class="my-3 text-warning">Project</h2>
          <i class="fas fa-cogs px-3"><i class="p-3">success</i></i>
        <p class="text-muted my-4 font-italic">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt,
          doloribus?</p>
            <button type="button" class="btn btn-outline-warning">Learn More</button>
      </div>
      <div class="col-lg-3 col-sm-10 text-center max-auto mb-5">
        <img src="./png/images1.jpg" class="img-thambnail" style="width: 350px; height: 230px;">
        <h2 class="my-3 text-warning">Project</h2>
         <i class="fas fa-car text-left px-3"><i class="p-3">Gorakhpur </i></i>
        <p class="text-muted my-4 font-italic">Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias,
          doloribus.</p>
            <button type="button" class="btn btn-outline-warning">Learn More</button>
      </div>
      <div class="col-lg-3 col-sm-10 text-center max-auto mb-5">
        <img src="./png/2-photo.jpg" class="img-thambnail "
          style="width: 350px; height: 230px;">
        <h2 class="my-3 text-warning">Project</h2>
         <i class="fas fa-wifi"><i class="p-3">workimg</i></i>
        <p class="text-muted my-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione,</p>
          <button type="button" class="btn btn-outline-warning">Learn More</button>
      </div>
      <div class="col-lg-3 col-sm-10 text-center max-auto mb-5">
        <img src="./png/images.jpg" class="img-thambnail" style="width: 350px; height: 230px;">
        <h2 class="my-3 text-warning">Project</h2>
        <i class="fa-sharp fa-solid fa-fingerprint px-3"><i class="p-3">Security</i></i>
        <p class="text-muted my-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, illo?</p>
          <button type="button" class="btn btn-outline-warning">Learn More</button>

      </div>
    </div>
  </section>
   <c:import url="footer-project.jsp"></c:import>
 
  
  
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.sli"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    ></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    ></script>
</body>

</html>