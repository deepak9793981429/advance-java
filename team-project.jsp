<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <title>Team Intro</title>
  <script>
      $(document).ready(function(){
    	  $(".customer-logos").slick({
    		  slidesToShow:6,
    		  slidesToScroll:1,
    		  autoplay:true,
    	      autoplaySpeed:1500,
    	      arrows:false,
    	      dots:false,
    	      pauseOnHover:false,
    	      responsive:[
    	    	  {
    	    	  breakpoint:768,
    	    	  settings:{
    	    		  slidesToShow:4
    	    	    }
    	    	  },{
    	    		  breakpoint:522,
    	    		  settings:{
    	    			  slidesToShow:3
    	    		  }
    	    	  }
    	      ]
    	  });
      });
  </script>
</head>
<body>
<!--import navbar  -->
<c:import url="navbar-project.jsp"></c:import>
 <!-- Open Team Section -->
   <section class="p-2 p-sm-5 bg-info">
    <div class="container-fliud  ">
      <div class="row justify-content-center ">
        <div class="col-sm-6 text-center">
          <h1 class="display-2 text-capitalize mb-3">
            <span class="text-warning">Team</span>
          </h1>
          <p class=" font-italic text-light mb-3">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ad odio et nulla id sequi facere nam modi corporis
            aliquid eum!
          </p>
        </div>
      </div>
    </div>
    </section>
    <section class=" text-center ">
    <div class="container-fluid">
      <div class="row align-content-center">
        <div class="col-lg-4 ">
          <div class="card " style="width:24rem">
            <img src="./png/team1.jpg" class="card-img-top  mx-auto" border="5"  style="width: 24rem; height: 230px;">
            <div class="card-body ">
              <div class="card-title">
                <h2 class="text-muted">Micheal</h2>
              </div>
              <div class="card-subtitle">
                <p class="lead text-secondary">Lorem ipsum dolor sit amet.</p>
              </div>
              <div class="text-right inner py-4">
                <i class="fab fa-facebook fa-2x mx-2 text-primary" title="facebook"></i>
                <i class="fab fa-twitter fa-2x mx-2 text-info" title="twitter"></i>
                <i class="fab fa-youtube fa-2x mx-2 text-danger" title="youtube"></i>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 slide">
          <div class="card " style="width:24rem">
            <img src="./png/team2.jpg" class="card-img-top " style="width: 24rem; height: 230px;">
            <div class="card-body">
              <div class="card-title">
                <h2 class="text-muted">jack</h2>
              </div>
              <div class="card-subtitle">
                <p class="lead text-secondary">Lorem ipsum dolor sit amet.</p>
              </div>
              <div class="text-right inner py-4">
                <i class="fab fa-facebook fa-2x mx-2 text-primary" title="facebook"></i>
                <i class="fab fa-twitter fa-2x mx-2 text-info" title="twitter"></i>
                <i class="fab fa-youtube fa-2x mx-2 text-danger" title="youtube"></i>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-">
          <div class="card " style="width:24rem">
            <img src="./png/team3.jpg" class="card-img-top mx-auto" style="width: 24rem; height: 230px;">
            <div class="card-body">
              <div class="card-title">
                <h2 class="text-muted">Ann</h2>
              </div>
              <div class="card-subtitle">
                <p class="lead text-secondary">Lorem ipsum dolor sit amet.</p>
              </div>
              <div class="text-right inner py-4">
                <i class="fab fa-facebook fa-2x mx-2 text-primary" title="facebook"></i>
                <i class="fab fa-twitter fa-2x mx-2 text-info" title="twitter"></i>
                <i class="fab fa-youtube fa-2x mx-2 text-danger" title="youtube"></i>
              </div>
            </div>
          </div>
        </div>
        </div>
      </div>
  </section>
  <!-- end Team Section -->
  <!-- import navbar -->
  <c:import url="footer-project.jsp"></c:import>
  
    <script src="https://code.jquery.com/jquery-3.2.1.sli"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    ></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    ></script>
</body>
</html>