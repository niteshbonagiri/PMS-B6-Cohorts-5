<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	table, th, td {
	  border: 1px solid black;
	  border-collapse: collapse;
	  padding: 10px;
	}
	thead {
	  background: #395870;
	  color: #fff;
	}
</style>
<title>Investor Wallet</title>
</head>
<body>
	<div style="float: left;">
		<br/>
		<br/>
		<table style="margin-bottom: 20px">
			<thead>
				<tr>
				<td colspan="4" style="color: black;"><b>My Wallet details</b></td>
				</tr>
				<tr>
					<th scope="col" colspan="1">User</th>
					<th scope="col" colspan="1">Amount invested</th>
					<th scope="col" colspan="1">Amount Earned</th>
					<th scope="col" colspan="1">Balance</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Suhas</td>
					<td>100</td>
					<td>10</td>
					<td>110</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br/>
	<br/>
	<div class="container" style="float: right">
		<h4 style="color: brown;">Transact cash in wallet.</h4>
		<form action="addMoney" method="post">
			<input type="text" id="cash" name="cash" placeholder="Amount">
			<input type="submit" value="Add Money">
		</form>
		
		<form action="withdrawMoney" method="post">
			<input type="text" id="cash" name="cash" placeholder="Amount">
			<input type="submit" value="Withdraw Money">
		</form>
	</div>'
	
	<div style="float: left;">
		<br/>
		<br/>
		<table>
			<thead>
				<tr>
					<td colspan="5" style="color: black;"><b>Transaction details</b></td>
				</tr>
				<tr>
					<th scope="col" colspan="1">Transaction Id</th>
					<th scope="col" colspan="1">Amount</th>
					<th scope="col" colspan="1">Transaction type</th>
					<th scope="col" colspan="1">Date time</th>
					<th scope="col" colspan="1">Balance</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1234</td>
					<td>100</td>
					<td>Credit</td>
					<td>10/4/2020 1:17 PM</td>
					<td>110</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>