<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Forgot Username</title>
<style type="text/css">
body {
	background-image: url(b4.jpg);
	color: white;
	
}
h1 {

	font-size: 3em;
	font-weight: 500;
	text-align: center;
}

table, td {
	padding: 8px;
}

.registerbtn {
	background-color: #4CAF99;
	color: white;
	padding: 11px 10px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}
</style>
</head>
<body>
	
		<h1>Forgot Username ?</h1>
		<br>
		<br>
		<h2>Please enter the details</h2>

        <form:form action="/validateadminusername" method="post"
		modelAttribute="admin">
		<table>
			
			<tr>
				<td><form:label for="email" path="email">
						<b>Email ID </b>
					</form:label></td>
				<td><form:input type="text" placeholder="Enter Email ID"
						path="email" name="email" required="" /></td>
			</tr>

			<tr>
				<td><form:label for="contactNumber" path="contactNumber">
						<b>Contact number </b>
					</form:label></td>
				<td><form:input type="tel" path="contactNumber"
						placeholder="Enter Contact number" name="contactNumber" required="" />
				</td>
			</tr>

			<tr>
				<td><form:label for="birthCity" path="birthCity">
						<b>Birth City </b>
					</form:label></td>
				<td><form:input type="text" path="birthCity"
						placeholder="Enter your Birth city" name="birthCity" required="" />
				</td>
			</tr>

			<tr>
				<td><form:label for="favoriteFood" path="favoriteFood">
						<b>Favorite Food </b>
					</form:label></td>
				<td><form:input type="text" path="favoriteFood"
						placeholder="Enter your favorite food" name="favoriteFood"
						required="" /></td>
			</tr>

			<tr>
				<td><form:label for="petName" path="petName">
						<b>Pet name </b>
					</form:label></td>
				<td><form:input type="text" path="petName"
						placeholder="Enter your pet name" name="petName" required="" /></td>
			</tr>


			<tr>
				<td></td>
				<td><input type="submit" value="Submit" class="registerbtn"/></td>
			</tr>

		</table>
	</form:form>

	






</body>
</html>