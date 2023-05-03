package com.server.web.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;



public class StudentDbUtil1 {
	private DataSource dataSource;

	public StudentDbUtil1(DataSource theDataSource) {
		dataSource=theDataSource;
	}
	        //  Get List of All Student
	public List<Student> getStudent(){
		   List<Student> students = new ArrayList<>();
		    Connection myConn = null;
		    Statement myStmt = null;
		    ResultSet myRs = null;
	        try {
			 //	Get Connection
	         myConn = dataSource.getConnection();
	         //create a sql  statement
	         String sql = "SELECT*FROM client";
	         myStmt = myConn.createStatement();
	         
	         // execute SQL Query        
	         myRs = myStmt.executeQuery(sql);

	          //converting rows into student class object
	         while(myRs.next()) {
	        	 //Retrieving data from resultset
	        	 int id = myRs.getInt("id");
	        	 String firstName = myRs.getString("first_name");
	        	 String lastName = myRs.getString("last_name");
	        	 String email = myRs.getString("email");

	             //create new student object
	             Student tempStudent = new Student(id,firstName,lastName,email);
	             students.add(tempStudent);
			 }  
			// Create run time  error  the handling  
		 }catch(Exception exc) {
			 exc.printStackTrace();
		 }
		 finally {
	         //	cleanup resource
			 close(myConn,myRs,myStmt);
		 }
			return students;
	 }

	       // Get student single by id
	public  Student getStudent(String theStudentId)throws Exception{
	        Student theStudent = null;
	        Connection myConn = null;
	        PreparedStatement myStmt = null;
	        ResultSet myRs = null;
	        int StudentId;
		    try {
		       //Convert studentId to in 
		       StudentId =Integer.parseInt(theStudentId);
		    
		       // get Connection myConn = dataSource.getConnection();
		       myConn = dataSource.getConnection();
		    
		       // Create sql to get select student
		       String sql = "select*from client where id=?";
		    
		       //create prepare Statement
		       myStmt = myConn.prepareStatement(sql);
		      
		    
		       // parameter binding
		       myStmt.setInt(1,StudentId);

		       //Execute Query
		      myRs = myStmt.executeQuery();
		    
		       //Retrive data for result set row
		       if(myRs.next()) {
		    	   String firstName = myRs.getString("first_name");
		    	   String lastName = myRs.getString("last_name");
		    	   String email = myRs.getString("email");
		    	
	            //using the theStudentId during object construction
		    	   theStudent = new Student(StudentId,firstName,lastName,email);
		    	
		    	 } else {
		    		 throw new Exception("Could not find client id"+StudentId);
		    	 } 
		    	 return theStudent;
		     }
		     finally {
		    	 // cleanup jdbc resource
		    	 close(myConn,myRs,myStmt);
		     }
	   }
	            // Add a new student
	public void addStudent(Student theStudent)throws Exception{
		        Connection myConn = null;
		        PreparedStatement myStmt = null;
		      try {
		        // get Connection
	            myConn =dataSource.getConnection();

	            //create sql Query
	            String sql = "insert into client (first_name,last_name,email) value (?,?,?)";
	            myStmt = myConn.prepareStatement(sql);
	           
	            //set param valued of he Student
	            myStmt.setString(1,theStudent.getFirst_Name());
	            myStmt.setString(2,theStudent.getLast_Name());
	            myStmt.setString(3,theStudent.getEmail());

	                   // execute query()
			           myStmt.execute();
		   }finally {
	        // cleanup resource
			close(myConn,null,myStmt);
		}
	}
	           // Update a student
	public void updateStudents(Student theStudent)throws Exception {
		        Connection myConn = null;
		        PreparedStatement myStmt = null;
		      
		   try {
			   // Get Connection
	           myConn = dataSource.getConnection();
	         
			   // Create SQL Query
	           String sql = "update client set first_name=?,last_name=?,email=? where id=?";
	           myStmt = myConn.prepareStatement(sql);

			   // set param value of he student
	           myStmt.setString(1,theStudent.getFirst_Name());
	           myStmt.setString(2,theStudent.getLast_Name());
	           myStmt.setString(3,theStudent.getEmail());
	           myStmt.setInt(4,theStudent.getId());

			   // execute query()
	           myStmt.execute();

		   }finally {
			   
			   // cleanup jdbc resource
			   close(myConn,null,myStmt);
		   }
	}
	         // Delete a student
	public void deleteStudent(String theStudentId)throws Exception{
		    Connection myConn = null;
		    PreparedStatement myStmt = null;
		    int StudentId; 
	        
		    try {
		    	// convert StudentId to int
		    	StudentId=Integer.parseInt(theStudentId);
		    	 
		    	// Get Connection
		    	myConn = dataSource.getConnection();
		    	
		    	// Create SQL 
		    	String sql = "delete from client where id=?";
		    	
		    	// Create  prepared Statement
		    	myStmt = myConn.prepareStatement(sql);
		    	
		    	// parameter binding
		    	myStmt.setInt(1,StudentId);
		    	
		    	// Create execute
		    	myStmt.execute();
		    	
		    }finally {
	             //	cleanup resource    	  
		    	 close(myConn,null,myStmt);
		     }   
	}

//	    Close up Code
	private void close(Connection myConn, ResultSet myRs, Statement myStmt ){
		try {
			if(myConn != null) {
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
	
		// TODO Auto-generated method stub
		
	}


