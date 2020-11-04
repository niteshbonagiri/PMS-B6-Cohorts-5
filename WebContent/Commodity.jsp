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
	
	#content {
	  padding-bottom: 450px;
	  position: relative;
	}
	#footer {
	  position: absolute;
	  bottom: 0;
	  right: 0;
	  height: 85px;
	}
</style>
<title>Commodity</title>
</head>
<body>
	<div style="float: left;">
		<br/>
		<br/>
		<br/>
		<table style="margin-bottom: 20px">
			<thead>
				<tr>
					<th scope="col" colspan="1">Commodity Id</th>
					<th scope="col" colspan="1">Commodity Name</th>
					<th scope="col" colspan="1">Price</th>
					<th scope="col" colspan="1">Currency</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>123456</td>
					<td>Gold</td>
					<td>10</td>
					<td>$</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br/>
	<br/>
	<br/>
	<br/>
	<div class="container" style="float: right">
		<form action="addMoney" method="post">
			<input type="text" id="cash" name="cash" placeholder="Amount">
			<input type="submit" value="Buy">
		</form>
		
		<form action="withdrawMoney" method="post">
			<input type="text" id="cash" name="cash" placeholder="Amount">
			<input type="submit" value="Sell">
		</form>
	</div>'
	<br/>
	<br/>
	<br/>
	
	<div id=content style="float: left;">
		<br/>
		<br/>
		<table id =footer style="margin-bottom: 20px">
			<thead>
				<tr>
					<td colspan="4" style="color: black;font-size:20px;text-align:center"><b>Historical Prices</b></td>
				<tr>
					<th scope="col" colspan="1">Commodity Name</th>
					<th scope="col" colspan="1">Price</th>
					<th scope="col" colspan="2">Date</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Gold</td>
					<td>10</td>
					<td>05/11/2020 12 :00 PM</td>
				</tr>
				<tr>
					<td>Gold</td>
					<td>11</td>
					<td>04/11/2020 12 :00 PM</td>
				</tr>
				<tr>
					<td>Gold</td>
					<td>12</td>
					<td>03/11/2020 12 :00 PM</td>
				</tr>
				<tr>
					<td>Gold</td>
					<td>10</td>
					<td>02/11/2020 12 :00 PM</td>
				</tr>
				<tr>
					<td>Gold</td>
					<td>10</td>
					<td>01/11/2020 12 :00 PM</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>