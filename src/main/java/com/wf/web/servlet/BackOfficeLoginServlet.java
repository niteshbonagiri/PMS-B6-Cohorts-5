package com.wf.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wf.web.dao.BackOfficeUserDao;
import com.wf.web.dao.UserDao;

/**
 * Servlet implementation class Login
 */
@WebServlet({ "/BackOfficeLoginServlet" })
public class BackOfficeLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BackOfficeUserDao userDao;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		String driver = config.getServletContext().getInitParameter("jdbcDriver");
    	String url = config.getServletContext().getInitParameter("jdbcUrl");
    	String username= config.getServletContext().getInitParameter("jdbcUsername");
    	String password= config.getServletContext().getInitParameter("jdbcPassword");
    	
    	this.userDao = new BackOfficeUserDao(driver, url, username, password);
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BackOfficeLoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		
		try {
			if(userDao.checkUserExists(username, password)) {
				RequestDispatcher dispatch = request.getRequestDispatcher("BackOfficeUserHomePage.jsp");
				dispatch.forward(request, response);
			} else {
				out.println("<html><body>");
				out.println("<h1> Login failed </h1><br/>" );
				out.println("<h1> Invalid login credentials </h1><br/>" );
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
