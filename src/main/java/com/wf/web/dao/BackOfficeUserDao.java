package com.wf.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.wf.web.model.BackOfficeUser;
import com.wf.web.model.User;

public class BackOfficeUserDao {

	private String driver;
	private String url;
	private String username;
	private String password;
	
	private Connection connection;
	
	public BackOfficeUserDao(String driver, String url, String username, String password) {
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
	
	
	public boolean checkUserExists(String loginId, String password) throws ClassNotFoundException, SQLException {
		boolean flag=false;
		String sql = "select * from backofficeuser where LoginId = '"+loginId+"'"+" and Password='" +password +"'";
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
	
}
