package com.demo.web.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;



public class EmployeeDbUtil {
	private DataSource dataSource;

	public EmployeeDbUtil(DataSource theDataSource) {
		dataSource=theDataSource;
	}
	        //  Get List of All Student
	public List<Employee> getEmployee(){
		   List<Employee> students = new ArrayList<>();
		    Connection myConn = null;
		    Statement myStmt = null;
		    ResultSet myRs = null;
	        try {
			 //	Get Connection
	         myConn = dataSource.getConnection();
	         //create a sql  statement
	         String sql = "SELECT*FROM username";
	         myStmt = myConn.createStatement();
	         
	         // execute SQL Query        
	         myRs = myStmt.executeQuery(sql);

	          //converting rows into student class object
	         while(myRs.next()) {
	        	 //Retrieving data from resultset
	        	 int id = myRs.getInt("id");
	        	 String firstName = myRs.getString("first_name");
	        	 String lastName = myRs.getString("last_name");
	        	 String username = myRs.getString("username");		       
	        	 String password = myRs.getString("password");
	        	 String contact = myRs.getString("contact");
		        	
	             //create new student object
	             Employee tempStudent = new Employee(id,firstName,lastName,username,password,contact);
	             students.add(tempStudent);
			 }  
		  // Create run time  error  the handling  
		 }catch(Exception exc) {
			 exc.printStackTrace();
		 }
		 finally {
	         //	cleanup resource
			 close(myConn,myStmt,myRs);
		 }
			return students;
	 }
	       // Get student single by id
public Employee getEmployees(String thEmployeeId)throws Exception{
	   Employee theEmployee=null;
	   Connection myConn=null;
	   PreparedStatement myStmt=null;
	   ResultSet myRs=null;
	   int EmployeeId;
	   
	   try {
//		   convert employeeId to int
		   EmployeeId = Integer.parseInt(thEmployeeId);
//		   get Connection
		   myConn = dataSource.getConnection();
//		   set sql
		   String sql = "select*from username where id=?";
//		   create prepared statement
		   myStmt = myConn.prepareStatement(sql);
//		   parameter binding
		   myStmt.setInt(1,EmployeeId);
//		   execute Query
		   myRs = myStmt.executeQuery();
		   
		   if(myRs.next()) {
			   String firstName = myRs.getString("first_name");
			   String lastName = myRs.getString("last_name");
		   	   String username = myRs.getString("username");		        	
			   String password = myRs.getString("password");
			   String contact = myRs.getString("contact");
		        	
			   theEmployee=new Employee(EmployeeId,firstName,lastName,username,password,contact);
		   }else {
			   throw new Exception("Could not find username id"+EmployeeId);
		   }
		   return theEmployee;
	   }finally {
		   close(myConn,myStmt,myRs);
	   }
}
public void addEmployee(Employee theEmployee)throws Exception{
	        Connection myConn = null;
	        PreparedStatement myStmt = null;
	        
	        try {
//	        	get Connection
	        	myConn = dataSource.getConnection();
//	        	set sql
	        	String sql = "insert into username (first_name,last_name,username,password,contact) value (?,?,?,?,?)";
//	        	create Prepared Statement
	        	myStmt = myConn.prepareStatement(sql);	        	
//	        	Read param employee value
	        	myStmt.setString(1,theEmployee.getFirstName());
	        	myStmt.setString(2,theEmployee.getLastName());
	         	myStmt.setString(3,theEmployee.getUsername());
	        	myStmt.setString(4,theEmployee.getPassword());
	         	myStmt.setString(5,theEmployee.getContact());
	        	
//	        	execute 
	        	myStmt.execute();
	        }finally {
	        	close(myConn,myStmt,null);
	        }
}
public void updateEmployee(Employee theEmployee)throws Exception{
	        Connection myConn =null;
	        PreparedStatement myStmt = null;
	        
	        try {
//	        	get connection
	        	myConn = dataSource.getConnection();
//	        	set sql 
	        	String sql = "update username set first_name=?,last_name=?,username=?,password=?,contact=? where id=?";
//	        	create prepared Statement
	        	myStmt = myConn.prepareStatement(sql);	        	
//	        	set update Employee value
	        	myStmt.setInt(1,theEmployee.getId());
	        	myStmt.setString(2,theEmployee.getFirstName());
	        	myStmt.setString(3,theEmployee.getLastName());
	         	myStmt.setString(4,theEmployee.getUsername());
	        	myStmt.setString(5,theEmployee.getPassword());
	         	myStmt.setString(6,theEmployee.getContact());
	        	
//	        	  execute 
	        	myStmt.execute();
	        }finally {
	        	close(myConn,myStmt,null);
	        }
}
public void deleteEmployee(String theEmployeeId)throws Exception{
	        Connection myConn = null;
	        PreparedStatement myStmt =null;
	        int EmployeeId;
	        try {
//	        	convert EmployeeId to int
	        	EmployeeId =Integer.parseInt(theEmployeeId);
//	        	get Connection
	        	myConn = dataSource.getConnection();
//	        	set sql 
	        	String sql = "delete from username where id=?";
//	        	create Prepared Statement
	        	myStmt = myConn.prepareStatement(sql);
//	        	parameter binding
	        	myStmt.setInt(1,EmployeeId);
	        	
//	        	    execute 
	        	myStmt.execute();
	        }finally {
	        	close(myConn, myStmt, null);
	        }
}
//all resource close
private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
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
