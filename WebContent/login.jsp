<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h2>Enter Credentials</h2>
<br/>
<form action="Login" method="post">
	<label>UserName</label><hr/>
	<input type="text" name="username"/>
	<br/>
	<br/>
	<label>Password</label><hr/>
	<input type="text" name="password"/>
	<br/>
	<br/>
	<input type=Submit name=Submit Value=Submit>
</form>
</body>
</html>