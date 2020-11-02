<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Back Office User Login Page</title>
</head>
<body>
<h2>Back Office User Login Page</h2>
<br/>
<form action="BackOfficeLoginServlet" method="post">
<table>
		<tr>
			<td><label>Username</label></td>
			<td><input type="text" name="username" required/></td>
		</tr>
		<tr>
			<td><label>Password</label></td>
			<td><input type="password" name="password" required/></td>
	    </tr>
	    <tr>
	    	<td><input type=Submit name=Submit Value=Submit></td>
	    	<td><input type=reset name=reset Value=reset></td>
	    </tr>
</table>
</form>
</body>
</html>