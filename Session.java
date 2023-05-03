package com.demo.web.jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Session")
public class Session extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String user=request.getParameter("uname");
		String pass=request.getParameter("pass");
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("username");
		String password=(String) session.getAttribute("password");
		  if(pass.equals(password) && username.equals(user)) {
			  session.setAttribute("username", user);
			  response.sendRedirect("StudentControllerServlet2");
		  }else {
			  response.sendRedirect("reinvalid-form.html");
		  }
	}

}
