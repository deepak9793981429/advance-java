<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>J S P Page</title>
</head>
<body>
      <h3>Scriplets Tag</h3>
   Today Date And Time : <%out.println(new java.util.Date()); %>
   <br>
   
      <%
      //Multiple line of java codes
   for(char i=1; i<=5; i++){
      for(char j=1;j<=i;j++){
    	   out.print(" *");
    	}
      
      out.print("<br/>");
   }		
      
  %>
  <b>Table only of Two </b>
  <% for(int i=1;i<=10;i++){
	  out.println("2x"+i+"="+i*2);
	  out.print("<br/>");
  }
	  
	  %>
  
  
   
  
</body>
</html>