<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expression Tag</title>
</head>
<body>
       this is today time : <%=(new java.util.Date()) %>
       <br>
      5*10=<%=5*10 %> 
      <br>
      8*6=<%=8*6 %>    
      
      <%
      String name="DeEpAk";
      int n=19;
      float f=2.00f;
      
    %>
     
   This is Upper Case : <%=name.toUpperCase() %>
   <br>
   This is Lower Case : <%=name.toLowerCase() %>
   <br>
   int_Values: <%=n%>
   <br>
   float_Values: <%=f%>
    		 
    		  
    		
    		  
</body>
</html>