package com.servlet.web.jdbc;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/StudentControllerServlet")
public class StudentControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private StudentDbUtil studentDbUtil;
	
	@Resource(name="jdbc/student_tracker")
	private DataSource dataSource;

	
  @Override
  public void init()throws ServletException{
	  super.init();
//	  Create our StudentDbUtil and pass in the Connection pool / Datasource
	  try {
		  studentDbUtil = new StudentDbUtil(dataSource);
	  }catch(Exception exc) {
		  throw new ServletException(exc);
	  }
  }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		Read the "Command" Parameter
		try {
		String theCommand = request.getParameter("command");
//		if the Command missing then default is listing student
		if(theCommand == null) {
			theCommand = "LIST";
		} 
		
//		route to oppropriate method
		switch(theCommand) {
		case "LIST":
	 	     listStudent(request,response);
			break;
		case "ADD":
			addStudent(request,response);
			break;
		case "LOAD":
			loadStudent(request,response);
			break;
		case "UPDATE":
			updateStudent(request,response);
			break;
		case "DELETE":
			deleteStudent(request,response);
			break;
		default:
 			listStudent(request,response);
			break;	
		}
		}catch(Exception exc) {
			throw new ServletException(exc);
		}		
	}
	
	private void listStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
//		add student form dbUtil
		List<student> students = studentDbUtil.getStudents();
//		add students to the request
		request.setAttribute("STUDENT_LIST",students); 
//		sent to the JSP(View)
		RequestDispatcher dk=request.getRequestDispatcher("./list-student.jsp");
		dk.forward(request,response);
		
	}
	private void addStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
//      Read student from form data
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		
//		create a new student object
		student theStudent = new student(firstName,lastName,email);

//		passing theStudent to StudentDbUtil
		studentDbUtil.addStudent(theStudent);
		
//		send back to mainpage
		listStudent(request,response);
	}
	private void loadStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
//		read student id from data
		String theStudentId = request.getParameter("StudentId");
		
//		create Student from dbUtil
		student theStudent = studentDbUtil.getStudent(theStudentId);
		
//		place request set attribute
		request.setAttribute("THE_STUDENT",theStudent);
		
//		send to jsp page update-student-form.jsp
		RequestDispatcher dispatcher=request.getRequestDispatcher("./update-student-form.jsp");
		dispatcher.forward(request,response);
		
	}
	private void deleteStudent(HttpServletRequest request,HttpServletResponse response) throws Exception {
//		reade student from data
		String theStudentId =request.getParameter("StudentId");
		
//		delete from student database
		 studentDbUtil.deleteStudent(theStudentId);
		 
//		 send to back "list Students" page
		 listStudent(request,response);
	}
	private void updateStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
//      Read student from form data
		int Id = Integer.parseInt(request.getParameter("StudentId"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		
//		create a new student object
		student theStudent = new student(Id,firstName,lastName,email);

//		passing theStudent to StudentDbUtil
		studentDbUtil.updateStudent(theStudent);
		
//		send back to mainpage
		listStudent(request,response);
	}

	
}

