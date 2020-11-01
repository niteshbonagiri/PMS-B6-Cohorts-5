<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body>
	<h1> User Registration </h1>
	<hr/>
	<form action="UserServlet" method="post">
	<table>
		<tr>
			<td><label>First name: </label> </td>
			<td><input type="text" name="firstname" required></input> </td>
	   </tr>
	    <tr>
			<td><label>Last Name:</label>  </td>
			<td> <input type="text" name="lastname" required></input> </td>
	 	</tr>
	 	<tr>
			 <td><label> Gender: </label></td>
			 <td><input type="radio" name="gender" value="male" required>Male 
			 <input type="radio" name="gender" value="female" required>Female </td>
	 	</tr>
	 	<tr>
			<td><label> Pan ID: </label></td>
			<td><input type="text" name="panid" required></input> </td>
		</tr>
		<tr>
			<td><label> Email ID: </label></td>
			<td><input type="text" name="emailid" required></input> </td>
		</tr>
		<tr>
			<td><label> Mobile Number: </label></td>
			<td><input type="text" name="mobilenumber" required></input> </td>
		</tr>
		<tr>
			<td><label> Login key: </label></td>
			<td><input type="text" name="loginkey" required></input> </td>
		</tr>
		<tr>
			<td><label> Password: </label></td>
			<td><input type="password" name="password" required></input> </td>
		</tr>
		<tr>
			<td><input type=Submit name=Submit Value=Submit></td>
			<td><input type=reset name=reset Value=reset></td>
		</tr>
	</table>
	</form>

</body>
</html>