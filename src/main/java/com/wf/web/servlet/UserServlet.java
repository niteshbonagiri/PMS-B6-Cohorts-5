package com.wf.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wf.web.dao.UserDao;
import com.wf.web.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		String driver = config.getServletContext().getInitParameter("jdbcDriver");
    	String url = config.getServletContext().getInitParameter("jdbcUrl");
    	String username= config.getServletContext().getInitParameter("jdbcUsername");
    	String password= config.getServletContext().getInitParameter("jdbcPassword");
    	
    	this.userDao = new UserDao(driver, url, username, password);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String gender=request.getParameter("gender");
		String panid=request.getParameter("panid");
		String emailid=request.getParameter("emailid");
		int mobilenumber=Integer.parseInt(request.getParameter("mobilenumber"));
		String loginkey=request.getParameter("loginkey");
		String password=request.getParameter("password");
		
		User user=new User(firstname,lastname,mobilenumber,panid,gender,emailid,loginkey,password);
		
		try {
			if(userDao.checkPanExists(panid))
			{
				out.println("<html><body>");
				out.println("<h1>Registration Failed PAN ID " +panid +" already exists </h1><br/>" );
				out.println("<a href='index.html'>Click here to go to Home Page</a>");
				out.println("</body></html>");
				
			} else if(userDao.checkLoginKeyExists(loginkey))
			{
				out.println("<html><body>");
				out.println("<h1>Registration Failed Login key  " +loginkey +" already exists </h1>" );
				out.println("<a href='index.html'>Click here to go to Home Page</a>");
				out.println("</body></html>");
			}else {
				userDao.addUserRecord(user);
				out.println("<html><body>");
				out.println("<h1>Registration Successful  " +loginkey +" is your loginKey </h1>" );
				out.println("<a href='index.html'>Click here to go to Home Page</a>");
				out.println("</body></html>");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
