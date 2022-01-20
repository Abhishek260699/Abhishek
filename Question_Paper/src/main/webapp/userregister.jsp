<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Page</title>
<style type="text/css">
body {
	background-image: url(b3.jpg);
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
	<form:form action="/addUserDetails" method="post" modelAttribute="user">

		<h1>Register Here</h1>
		<br>
		<br>
		<p>Please fill this form to get registered</p>
		<br>

		<table>
			<tr>
				<td><form:label path="firstName">
						<b>First Name</b>
					</form:label></td>
				<td><form:input type="text" placeholder="Enter FirstName"
						path="firstName" required="required" /></td>
			</tr>

			<tr>
				<td><form:label path="lastName">
						<b>Last Name</b>
					</form:label></td>
				<td><form:input type="text" placeholder="Enter LastName"
						path="lastName" required="required" /></td>
			</tr>


			<tr>
				<td><form:label path="dob">
						<b>DOB</b>
					</form:label></td>
				<td><form:input type="date" placeholder="Enter DOB" path="dob"
						required="required" /></td>
			</tr>


			<tr>
				<td><form:label path="gender">
						<b>Gender</b>
					</form:label></td>
				<td><form:select type="text" path="gender" items="${gender1}"
						required="required"></form:select></td>
			</tr>

			<tr>
				<td><form:label path="email">
						<b>Email</b>
					</form:label></td>
				<td><form:input type="email" placeholder="Enter Email"
						path="email" required="required" /></td>
			</tr>


			<tr>
				<td><form:label path="contactNumber">
						<b>Contact Number</b>
					</form:label></td>
				<td><form:input type="text" placeholder="Enter Contact Number"
						path="contactNumber" pattern="[6-9]{1}[0-9]{9}"
						required="required" /></td>
			</tr>


			<tr>
				<td><form:label path="userId">
						<b>User Id</b>
					</form:label></td>
				<td><form:input type="text" placeholder="Enter User Id"
						path="userId" required="required" /></td>
			</tr>



			<tr>
				<td><form:label path="password">
						<b>Password</b>
					</form:label></td>
				<td><form:input type="password" placeholder="Enter Password"
						path="password" required="required" /></td>
			</tr>
		</table>

		<br>
		<br>
		<h2>Security Questions</h2>
		<table>

			<tr>
				<td><form:label path="birthCity">
						<b>What is your birth city?</b>
					</form:label></td>
				<td><form:input type="text" path="birthCity"
						required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="favoriteFood">
						<b>What is your favorite food?</b>
					</form:label></td>
				<td><form:input type="text" path="favoriteFood"
						required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="petName">
						<b>What is your pet name?</b>
					</form:label></td>
				<td><form:input type="text" path="petName" required="required" /></td>
			</tr>



			<tr>
				<td></td>
				<td><input type="submit" class="registerbtn" /></td>
			</tr>
			<tr>
				<td><input type="button"
					onclick="location.href='/backtohomepage'" value="Back"></td>
			</tr>

		</table>
	</form:form>
</body>
</html>