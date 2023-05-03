package com.demo.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet("/testServlet")
public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	@Resource(name="jdbc/student_tracker_db")
	private DataSource dataSource;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		PrintWriter out=response.getWriter();
		Connection myConn =null;
		Statement myStmt =null;
		ResultSet myRs =null;
		try {
			myConn=dataSource.getConnection();
			String sql="SELECT*FROM username";
			myStmt=myConn.createStatement();
			myRs=myStmt.executeQuery(sql);
			while(myRs.next()) {
				int id=myRs.getInt("id");
				String firstName=myRs.getString("first_name");
				String pass=myRs.getString("last_name");
				String p=myRs.getString("password");
				out.print(id+firstName+pass+p);
			}
		}catch(Exception exc) {
			exc.printStackTrace();
		}
	}

	
}
