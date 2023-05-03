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
  <title>contect Intro</title>
</head>
<body>
     <!-- navbar import -->
     <c:import url="navbar-project.jsp"></c:import>
     <!-- open contect section -->
      <section class="justify-content-center">
    <div class="container-fluid">
      <div class="row text-center">
        <div class="col-lg-12 col-sm-10 ">
          <h1 class="display-2 text-warning">Contact Us</h1>
          <p class="text-muted text-secondary">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Adipisci,
            alias.Hello Bootstrap</p>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-lg-6 col-sm-10 mb-3 ">
          <div class="text-secondary text-center">
            <h2> Got Question ?</h2>
            <p>Stay Connected</p>
          </div>
          <form class="text-muted form-tuch">
            <div class="form-group alert-link">
            <i class="fa-solid fa-circle-user"></i>
              <label for="name">Neme</label>
              <input type="text" id="name" class="form-control" title="enter-name">
            </div>
            <div class="form-group alert-link">
           <i class="fa-regular fa-envelope"></i>
              <label for="email">Email</label>
              <input type="text" id="email" class="form-control" title="enter-email">
            </div>
            <div class="from-group alert-link">
           <i class="fa-regular fa-message"></i>
              <label for="messege">Message</label>
             
              <textarea class="form-control" rows="3" id="message" title="enter about"></textarea>
            </div>
            <a href="error-form.html" class="btn btn-outline-warning btn-block my-3" title="Click">Submit</a>
        </div>     
        </form>
      </div>
    </div>
  </section> 
     <!-- end contect section -->
     <!-- footer import -->
     <c:import url="footer-project.jsp"></c:import>
</body>
</html>