package com.server.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");
//		  create Print Writer
		  PrintWriter out=response.getWriter();
		  String user=request.getParameter("username");
		  String pass=request.getParameter("pass");
		  if(pass.equals("123456789")) {
			  HttpSession session=request.getSession();
			  session.setAttribute("username",user);
			  response.sendRedirect("StudentControllerServlet1");
		  }else {
			  response.sendRedirect("./reinvalid-form.html");
		  }
		  
	}

}
