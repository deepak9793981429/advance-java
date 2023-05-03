package com.servlet.web.jdbc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SendToCookie")
public class SendToCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
//		Create Cookie object
		Cookie[] ck=request.getCookies();
		if(ck[0].getValue().equalsIgnoreCase("deepak")) {
			response.sendRedirect("StudentControllerServlet");
		}
		else {
			response.sendRedirect("UseCookie2.jsp");
		}
	}
}
