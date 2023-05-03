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

@WebServlet("/StudentControllerServlet2")
public class StudentControllerServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private StudentDbutil2 studentDbUtil;
       
       @Resource(name="jdbc/student_tracker_db")
       private DataSource dataSource;      
       @Override
       public void init()throws ServletException {
    	   super.init();
    	   try {
    	       studentDbUtil = new StudentDbutil2(dataSource);
    	   }catch(Exception exc) {
    		   throw new ServletException(exc);
    	   }
         }   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
//			set type
			response.setContentType("text/plain");
//			Read parameter Student From data			
			String theCommand = request.getParameter("command");			
			if(theCommand == null) {
				theCommand = "LIST";
			}			
//           Create HttpSession
			HttpSession session=request.getSession();
			String user=(String) session.getAttribute("username");
			if(user == null) {
				response.sendRedirect("./login-form-jquery.html");
			}else{	
				
				switch(theCommand) {
				case "LIST":
					listStudent(request,response);
					break;
				case "ADD":
					addStudent(request,response);
					break;
				case "DELETE":
					deleteStudent(request,response);
					break;
				case "UPDATE":
					updateStudent(request,response);
					break;
				case "LOAD":
					loadStudent(request,response);
					break;
			   default:
				   listStudent(request,response);
				}
			 }
		}catch(Exception exc) {
			exc.printStackTrace();
	   }
	 }
	private void listStudent(HttpServletRequest request,HttpServletResponse response)throws Exception {
		         List<Student2> students = studentDbUtil.getStudent2();		         
		         request.setAttribute("STUDENT_LIST",students);		         
		         RequestDispatcher dispatcher=request.getRequestDispatcher("./list-student-jquery.jsp");
		         dispatcher.forward(request, response);
	}	
	private void addStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
		         String firstName = request.getParameter("firstName");
		         String lastName = request.getParameter("lastName");
		         String email = request.getParameter("email");		         
		         Student2 theStudent = new Student2(firstName,lastName,email);		         
		         studentDbUtil.addStudent(theStudent);	         
		         listStudent(request,response);
	}
	private void deleteStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
		         String theStudentId = request.getParameter("StudentId");
		         studentDbUtil.deleteStudent(theStudentId);
		         listStudent(request,response);	         
	}
	private void loadStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
		         String theStudentId = request.getParameter("StudentId");
		         Student2 theStudent = studentDbUtil.getStudent2(theStudentId);
		         request.setAttribute("THE_STUDENT",theStudent);
		         RequestDispatcher dispatcher=request.getRequestDispatcher("./update-student.jsp");
		         dispatcher.forward(request,response);
	}
	private void updateStudent(HttpServletRequest request,HttpServletResponse response)throws Exception{
		         int id=Integer.parseInt(request.getParameter("StudentId"));
		         String firstName = request.getParameter("firstName");
		         String lastName = request.getParameter("lastName");
		         String email = request.getParameter("email");
		         Student2 tempStudent = new Student2(id,firstName,lastName,email);
		         studentDbUtil.updateStudent(tempStudent);
		         listStudent(request,response);	        		 
	}
}
