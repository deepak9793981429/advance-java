package com.demo.web.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
public class StudentDbutil2 {
private DataSource dataSource;

public StudentDbutil2(DataSource theDataSource) {
	  dataSource=theDataSource;
}
public List<Student2>getStudent2(){
	   List<Student2> students = new ArrayList<>();
	   Connection myConn = null;
	   Statement myStmt = null;
	   ResultSet myRs = null;
	   try {
//		   get Connection
		   myConn = dataSource.getConnection();
//		   set sql
		   String sql = "SELECT*FROM client";
//		   Create Statement
		   myStmt = myConn.createStatement();
//		   Execute Query
		   myRs = myStmt.executeQuery(sql);
		   
//		   Read to Student from database
		   while(myRs.next()) {
			   int id=myRs.getInt("id");
			   String firstName=myRs.getString("first_name");
			   String lastName=myRs.getString("last_name");
			   String email=myRs.getString("email");
			   
//			   Create a new student object
			   Student2 tempStudent = new Student2(id,firstName,lastName,email);
			   students.add(tempStudent);
		   }
	   }catch(Exception exc) {
		   exc.printStackTrace();
	   }finally {
		   close(myConn,myStmt,myRs);
	   }
	   return students;
}
  
public Student2 getStudent2(String theStudentId)throws Exception{
	   Student2 theStudent = null;
	   Connection myConn = null;
	   PreparedStatement myStmt = null;
	   ResultSet myRs = null;
	   int StudentId;
	   try {
//		   Convert studentId to int
		   StudentId = Integer.parseInt(theStudentId);
//		   get connection
		   myConn = dataSource.getConnection();
//		   set sql
		   String sql = "select*from client where id=?";
//		   Create Prepared Statement
		   myStmt = myConn.prepareStatement(sql);
//		   parameter binding
		   myStmt.setInt(1,StudentId);
//		   execute query
		   myRs = myStmt.executeQuery();
		   if(myRs.next()) {
			   String firstName=myRs.getString("first_name");
			   String lastName=myRs.getString("last_name");
			   String email=myRs.getString("email");
			   
			   theStudent= new Student2(StudentId,firstName,lastName,email);
		   }else {
			   throw new Exception("Could not find Student id"+StudentId);
		   }
		   return theStudent;
	   }finally {
		   close(myConn,myStmt,myRs);
	   }
}
public void addStudent(Student2 theStudent)throws Exception{
	        Connection myConn =null;
	        PreparedStatement myStmt =null;
	        try {
//	        	get Connection
	        	myConn = dataSource.getConnection();
//	        	set sql
	        	String sql = "insert into client (first_name,last_name,email) value (?,?,?)";
//	        	create prepared Statement
	        	myStmt=myConn.prepareStatement(sql);
	        	
//	        	set student data
	        	myStmt.setString(1,theStudent.getFirstName());
	        	myStmt.setString(2,theStudent.getLastName());
	        	myStmt.setString(3,theStudent.getEmail());
	        	
//	        	execute query
	        	myStmt.execute();
	        	
	        }finally {
	        	close(myConn,myStmt,null);
	        }
}
public void updateStudent(Student2 theStudent)throws Exception{
    Connection myConn = null;
    PreparedStatement myStmt = null;
  
try {
   // Get Connection
   myConn = dataSource.getConnection();
 
   // Create SQL Query
   String sql = "update client set first_name=?,last_name=?,email=? where id=?";
   myStmt = myConn.prepareStatement(sql);

   // set param value of he student
   myStmt.setString(1,theStudent.getFirstName());
   myStmt.setString(2,theStudent.getLastName());
   myStmt.setString(3,theStudent.getEmail());
   myStmt.setInt(4,theStudent.getId());

   // execute query()
   myStmt.execute();

}finally {
   
   // cleanup jdbc resource
   close(myConn,myStmt,null);
}
}
public void deleteStudent(String theStudentId)throws Exception{
	        Connection myConn=null;
	        PreparedStatement myStmt=null;
	        int StudentId;
	        try {
	        	StudentId=Integer.parseInt(theStudentId);
	        	myConn=dataSource.getConnection();
	        	String sql="delete from client where id=?";
	        	myStmt = myConn.prepareStatement(sql);
	        	myStmt.setInt(1,StudentId);
	        	myStmt.execute();
	        			
	        
	        }finally {
	        	close(myConn,myStmt,null);
	        }
}
private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
	         try {
	        	 if(myConn !=null) {
	        		 myConn.close();
	        	 }
	        	 if(myStmt != null) {
	        		 myStmt.close();
	        	 }
	        	 if(myRs != null) {
	        		 myRs.close();
	        	 }
	         }catch(Exception exc) {
	        	 exc.printStackTrace();
	         }
	         
	
}
}
