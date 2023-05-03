package com.servlet.web.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.sql.DataSource;

public class StudentDbUtil {

private DataSource dataSource;

public StudentDbUtil(DataSource theDataSource) {
	dataSource=theDataSource;
}
        //  Get List of All Student
public List<student> getStudents(){
	   List<student> students = new ArrayList<>();
	    Connection myConn = null;
	    Statement myStmt = null;
	    ResultSet myRs = null;
        try {
        
		 //	Get Connection
         myConn = dataSource.getConnection();
         //create a sql  statement
         String sql = "SELECT*FROM student";
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
             student tempStudent = new student(id,firstName,lastName,email);
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
public  student getStudent(String theStudentId)throws Exception{
        student theStudent = null;
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
	       String sql = "select*from student where id=?";
	    
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
	    	   theStudent = new student(StudentId,firstName,lastName,email);
	    	
	    	 }else{
	    		 throw new Exception("Could not find Student id"+StudentId);
	    	 } 
	    	 return theStudent;
	     }
	     finally {
	    	 // cleanup jdbc resource
	    	 close(myConn,myRs,myStmt);
	     }
   }
            // Add a new student
public void addStudent(student theStudent)throws Exception{
	        Connection myConn = null;
	        PreparedStatement myStmt = null;
	      try {
	        // get Connection
            myConn =dataSource.getConnection();

            //create sql Query
            String sql = "insert into student (first_name,last_name,email) value (?,?,?)";
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
public void updateStudent(student theStudent)throws Exception{
	        Connection myConn = null;
	        PreparedStatement myStmt = null;
	        
	      
	   try {
		   // Get Connection
           myConn = dataSource.getConnection();
         
		   // Create SQL Query
           String sql = "update student set first_name=?,last_name=?,email=? where id=?";
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
	    	String sql = "delete from student where id=?";
	    	
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

//    Close up Code
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
}