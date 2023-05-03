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
  <title>progrerss Intro</title>
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
   <!-- open Progrerss Section -->
   <section>
    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-lg-12 text-center">
          <h2 class="text-warning display-2">Progrerss</h2>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae, odit.</p>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-6 ">
        <h1>THML</h1>
        <div class="progress bg-secondary mb-3">
          <div class="progress-bar " style="width:50% ;" title="html">50%</div>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-6 ">
        <h1>CSS</h1>
        <div class="progress bg-secondary mb-3">
          <div class="progress-bar bg-danger " style="width:70% ;" title="css">70%</div>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-6 ">
        <h1>JAVASCRIPT</h1>
        <div class="progress bg-secondary mb-3">
          <div class="progress-bar bg-warning " style="width:90% ;" title="javascript">90%</div>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-6 ">
        <h1>BOOTSTRAP</h1>
        <div class="progress bg-secondary mb-3">
          <div class="progress-bar bg-success " style="width:95% ;" title="bootstrap">95%</div>
        </div>
      </div>
    </div>
  </section>
  <!--end  progrerss section -->
   
  <!-- import navbar -->
  <c:import url="footer-project.jsp"></c:import>
  
    <script src="https://code.jquery.com/jquery-3.2.1.sli"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    ></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    ></script>
</body>
</html>