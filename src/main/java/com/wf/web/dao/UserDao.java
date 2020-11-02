package com.wf.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.wf.web.model.User;

public class UserDao {

	private String driver;
	private String url;
	private String username;
	private String password;
	
	private Connection connection;
	
	public UserDao(String driver, String url, String username, String password) {
		this.driver = driver;
		this.url = url;
		this.username = username;
		this.password = password;
	}
	
	private void connect() throws ClassNotFoundException, SQLException {
		if(this.connection == null || this.connection.isClosed()) {
			Class.forName(driver);
			this.connection = DriverManager.getConnection(url, username, password);
		}
	}
	

	private void disConnect() throws SQLException {
		if(this.connection != null && !this.connection.isClosed())
			this.connection.close();
	}
	
	public boolean checkPanExists(String panId) throws ClassNotFoundException, SQLException {
		boolean flag=false;
		String sql = "select * from user where PanID = '"+panId+"'";
		this.connect();
		
		Statement stmt = this.connection.createStatement();
		ResultSet rs =  stmt.executeQuery(sql);
		if(rs.next()) {
			flag= true;
		}
		
		rs.close();
		stmt.close();
		this.disConnect();
		return flag;
	}
	
	public boolean checkLoginKeyExists(String loginKey) throws ClassNotFoundException, SQLException {
		boolean flag=false;
		String sql = "select * from user where LoginKey = '"+loginKey+"'";
		this.connect();
		
		Statement stmt = this.connection.createStatement();
		ResultSet rs =  stmt.executeQuery(sql);
		if(rs.next()) {
			flag= true;
		}
		
		rs.close();
		stmt.close();
		this.disConnect();
		return flag;
	}
	
	public User getUserDetails(String loginKey) throws ClassNotFoundException, SQLException {
		String sql = "select * from user where LoginKey = "+loginKey;
		this.connect();
		
		Statement stmt = this.connection.createStatement();
		ResultSet rs =  stmt.executeQuery(sql);
		User user;
		if(rs.next()) {
			user = new User(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4), rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9));
		} else
			user=null;
		
		rs.close();
		stmt.close();
		this.disConnect();
		return user;
	}
	
	public boolean addUserRecord (User user) throws ClassNotFoundException, SQLException {
		String sql = "insert into user (EmailID,FirstName,Gender,LastName,MobileNumber,PanID,LoginKey,Password) values(?,?,?,?,?,?,?,?)";
		this.connect();
		
		PreparedStatement pstmt = this.connection.prepareStatement(sql);
		
		pstmt.setString(1, user.getEmailId());
		pstmt.setString(2, user.getFirstName());
		pstmt.setString(3, user.getGender());
		pstmt.setString(4, user.getLastName());
		pstmt.setInt(5, user.getMobileNumber());
		pstmt.setString(6, user.getPanId());
		pstmt.setString(7, user.getLoginKey());
		pstmt.setString(8, user.getPassword());
		
		int n = pstmt.executeUpdate();
		
		pstmt.close();
		this.disConnect();
		
		if(n>0)
			return true;
		return false;
	}
	
	public boolean checkUserExists(String loginKey, String password) throws ClassNotFoundException, SQLException {
		boolean flag=false;
		String sql = "select * from user where LoginKey = '"+loginKey+"'";
		this.connect();
		
		Statement stmt = this.connection.createStatement();
		ResultSet rs =  stmt.executeQuery(sql);
		if(rs.next()) {
			String dbPassword = rs.getString(8);
			if (dbPassword.equals(password)) {
				flag=true;
			}
		}
		
		rs.close();
		stmt.close();
		this.disConnect();
		return flag;
	}
}
