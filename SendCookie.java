package com.servlet.web.jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SendCookie")
public class SendCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String uname=request.getParameter("username");
		String pass=request.getParameter("pass");
		if(pass.equals("12345678")) {
//			Creating Cookie Object
			Cookie ck=new Cookie("user",uname);
			response.addCookie(ck);
			response.sendRedirect("SendToCookie");
			}
		else
		{
			response.sendRedirect("UseCookie2.jsp");
		}
			
		}
	}
