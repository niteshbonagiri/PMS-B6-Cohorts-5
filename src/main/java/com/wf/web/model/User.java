package com.wf.web.model;

public class User {

	private String firstName;
	private String lastName;
	private int mobileNumber;
	private String panId;
	private String gender;
	private String emailId;
	private String password;
	private int investorId;
	
	public User(String firstName, String lastName, int mobileNumber, String panId, String gender, String emailId,
			String password, int investorId) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.mobileNumber = mobileNumber;
		this.panId = panId;
		this.gender = gender;
		this.emailId = emailId;
		this.password = password;
		this.investorId = investorId;
	}
	
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
	public int getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(int mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getPanId() {
		return panId;
	}
	public void setPanId(String panId) {
		this.panId = panId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public int getInvestorId() {
		return investorId;
	}

	public void setInvestorId(int investorId) {
		this.investorId = investorId;
	}
}
