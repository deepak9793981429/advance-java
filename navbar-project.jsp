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

      <c:url var="skill" value="ProjectServlet">
      <c:param name="user" value=""></c:param>
      </c:url>
<nav class="navbar navbar-expand-md navbar-light bg-dark">
    <a class="navbar-brand" href="#"><i class="fas fa-wifi fa-3x text-success"></i></a>
    <button type="button" class="navbar-toggler bg-light text-dark" data-toggle="collapse" data-target="#nav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="nav">
      <ul class="navbar-nav px-3">
        <li class="nav-item"><a class="nav-link text-light text-uppercase font-weight-bold" href="bootstrap-project.jsp" title="Click">Home</a></li>
        <li class="nav-item"><a class="nav-link text-light text-uppercase font-weight-bold" href="skills-project.jsp" title="Click">Skills</a></li>
        <li class="nav-time dropdown"><a class="nav-link dropdown-toggle text-light text-uppercase font-weight-bold "
            data-toggle="dropdown" href="project.jsp">Projects</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="project.jsp">Projects-1</a>
            <a class="dropdown-item" href="project.jsp">Projects-2</a>
            <a class="dropdown-item" href="project.jsp">Projects-3</a>
            <a class="dropdown-item" href="project.jsp">Projects-4</a>
          </div>
        </li>
        <li class="nav-item"><a class="nav-link text-light text-uppercase font-weight-bold" href="team-project.jsp" title="Click">Team</a></li>
        <li class="nav-item"><a class="nav-link text-light text-uppercase font-weight-bold" href="contect-project.jsp" title="Click">Contact</a></li>

      </ul>
      <form class="d-flex ml-auto" role="search" >
         <div class="input-group">         
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
        <button class="btn btn-outline-success" type="submit" title="Click"><i class="fas fa-search "></i></button>
        </div>
         </div>
      </form>
    </div>
   
  </nav>
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>
</html>