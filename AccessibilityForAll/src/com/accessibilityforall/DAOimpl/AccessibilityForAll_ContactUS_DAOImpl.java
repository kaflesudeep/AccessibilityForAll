package com.accessibilityforall.DAOimpl;

import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.accessibilityforall.DAO.AccessibilityForAll_ContactUS_DAO;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


public class AccessibilityForAll_ContactUS_DAOImpl {

	
		 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		 static final String DB_URL = "jdbc:mysql://localhost/accessibilityforall";
		 Long userSubmissionId;  
		//  Database credentials
		 static final String USER = "root";
		 static final String PASS = "1234";
		   
		 public Long add(AccessibilityForAll_ContactUS_DAO userFeedbackSubmission) {
			
			Connection connDatabase = databaseConnection();
			
			String insertTableSQL = "INSERT INTO contactus_feedback"+ "( SUBMISSION_ID, DATE_OF_SUBMIT, FIRST_NAME,	LAST_NAME,	ORGANIZATION_NAME,	EMAIL_ADDRESS,	SUBJECT_CATEGORY, DESCRIPTION)"
					+ " VALUES"	+ "(?,?,?,?,?,?,?,?)";

			try {
			PreparedStatement preparedStatement = connDatabase.prepareStatement(insertTableSQL);
			userSubmissionId = createUserSubmissionId();
			preparedStatement.setLong(1, userSubmissionId);
			preparedStatement.setDate(2, (Date) userFeedbackSubmission.getDateofsubmission());
			preparedStatement.setString(3, userFeedbackSubmission.getFirstName());
			preparedStatement.setString(4, userFeedbackSubmission.getLastName());
			preparedStatement.setString(5, userFeedbackSubmission.getOrginationName());
			preparedStatement.setString(6, userFeedbackSubmission.getEmailAddress());
			preparedStatement.setString(7, userFeedbackSubmission.getCategory());
			preparedStatement.setString(8, userFeedbackSubmission.getDescription());
			
			
			
			preparedStatement .executeUpdate();
			System.out.println("Data inserted to the database");
			
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}finally{
				try {
					connDatabase.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return userSubmissionId;
			
		
	}
	
	
	// need to implement a method so that we can get a unique submission id, 
		// we are just adding 1 to the last person's submission  id.
		public Long createUserSubmissionId(){
			Connection connDatabase = databaseConnection();
			String getUserID = "Select SUBMISSION_ID from contactus_feedback ORDER BY SUBMISSION_ID  ";
			Statement stmt = null;
			Long UserSubmissionID = (long) 100000000; 
		try{
			 stmt = (Statement) connDatabase.createStatement();
			 ResultSet rs = stmt.executeQuery(getUserID);
			 long i = (long) 100000000;
			 while(rs.next()){
				Long UserSubID = rs.getLong("SUBMISSION_ID");
				
					
				if (UserSubID != i){
					UserSubmissionID = i; 
					break; 
				}else{
					UserSubmissionID = i+1; 
				}
				i ++; 
			}
			 
			
					 
		 } catch (SQLException e ) {
	      System.out.println("Cannot get the registration number");
		 }
		return UserSubmissionID;
		}
		
		public Connection databaseConnection() {
			 Connection conn = null;
			try{
				//STEP 2: Register JDBC driver
			      Class.forName("com.mysql.jdbc.Driver");

			      //STEP 3: Open a connection
			      conn = (Connection) DriverManager.getConnection(DB_URL, USER, PASS);
			     
			 }catch(Exception e){
			      //Handle errors for Class.forName
			      e.printStackTrace();
			 	}
			return conn;
			
			 }
		}

		


