package com.demo.web.jdbc;

import java.io.IOException;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;





@WebServlet("/EmployeeControllerServlet")
public class EmployeeControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private EmployeeDbUtil EmployeeUtil;
	
	@Resource(name="jdbc/student_tracker_db")
	private DataSource dataSource;

	
  @Override
  public void init()throws ServletException{
	  super.init();
//	  Create our StudentDbUtil and pass in the Connection pool / Datasource
	  try {
		  EmployeeUtil= new EmployeeDbUtil(dataSource);
	  }catch(Exception exc) {
		  throw new ServletException(exc);
	  }
  }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  /* String email=request.getParameter("email");
   String password=request.getParameter("password");
   HttpSession session=request.getSession();
   session.setAttribute("email", email);
   session.setAttribute("password",password);*/  
//		Read the "Command" Parameter
		try {
		String theCommand = request.getParameter("Command");
//		if the Command missing then default is listing student
		if(theCommand == null) {
			theCommand = "LIST";
			
		} 
		//		 create ContentType
		
//		route to oppropriate method
		switch(theCommand) {
		case "LIST":
	 	     listEmployee(request,response);
			break;
		case "ADD":
			addEmployee(request,response);
			break;
		case "LOAD":
			loadEmployee(request,response);
			break;
		case "UPDATE":
			updateStudent(request,response);
			break;
		case "DELETE":
			deleteEmployee(request,response);
			break;
		default:
 			listEmployee(request,response);
			break;	
		}
		  
		}catch(Exception exc) {
			throw new ServletException(exc);
		}		
	}
	private void listEmployee(HttpServletRequest request,HttpServletResponse response)throws Exception{
//		add student form dbUtil
		List<Employee> students = EmployeeUtil.getEmployee();
//		add students to the request
		request.setAttribute("EMPLOYEE_LIST",students); 
//		sent to the JSP(View)
		RequestDispatcher dk=request.getRequestDispatcher("./list-employee.jsp");
		dk.forward(request,response);
		
	}
	private void addEmployee(HttpServletRequest request,HttpServletResponse response)throws Exception{
//      Read student from form data
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password =request.getParameter("password");
		String contact = request.getParameter("contact");
		HttpSession session=request.getSession();
		session.setAttribute("username",username);
		session.setAttribute("password",password);		
		Employee theEmployee = new Employee(firstName,lastName,username,password,contact);
//		passing theStudent to StudentDbUtil
		EmployeeUtil.addEmployee(theEmployee);
		response.sendRedirect("./login-form-jquery.html");

	}
	private void loadEmployee(HttpServletRequest request,HttpServletResponse response)throws Exception{
//		read student id from data
		String theEmployeeId = request.getParameter("EmployeeId");
		
//		create Student from dbUtil
		Employee theEmployee = EmployeeUtil.getEmployees(theEmployeeId);
		
//		place request set attribute
		request.setAttribute("THE_EMPLOYEE",theEmployee);
		
//		send to jsp page update-student-form.jsp
		RequestDispatcher dispatcher=request.getRequestDispatcher("./update-employee.jsp");
		dispatcher.forward(request,response);
		
		
		
}
	private void deleteEmployee(HttpServletRequest request,HttpServletResponse response) throws Exception {
//		reade student from data
		String theStudentId =request.getParameter("EmployeeId");
		
//		delete from student database
		EmployeeUtil.deleteEmployee(theStudentId);
		 
////		 send to back "list Students" page
	 listEmployee(request,response);
}
	private void updateStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
//     Read student from form data
		int Id = Integer.parseInt(request.getParameter("EmployeeId"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password =request.getParameter("password");
		String contact = request.getParameter("contact");
		
//		create a new student object
		Employee theStudent = new Employee(Id,firstName,lastName,username,password,contact);

//		passing theStudent to StudentDbUtil
		EmployeeUtil.updateEmployee(theStudent);
		
//		send back to mainpage
		listEmployee(request,response);
	}
}

