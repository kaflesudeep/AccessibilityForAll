package com.accessibilityforall.DAO;

import java.sql.Date;
import java.util.Calendar;

public class AccessibilityForAll_ContactUS_DAO {
// the variable must match to the form input field name value.
	
	 private String firstName; 
	 private String lastName; 
	 private String orginationName;
	 private String emailAddress;
	 private String category;
	 private String description;
	 private Date dateofsubmission;
	 
	 java.sql.Date today_date = new java.sql.Date(Calendar.getInstance().getTime().getTime());  // converting util date to sql date which is needse to save.
	 
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getOrginationName() {
		return orginationName;
	}
	public void setOrginationName(String orginationName) {
		this.orginationName = orginationName;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDateofsubmission() {
		return today_date;
	
	}
	
	// no need for the get method of date.
	
	 
	
	 
	 
}
