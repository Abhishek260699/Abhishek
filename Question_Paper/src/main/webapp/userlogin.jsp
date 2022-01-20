<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style type="text/css">
body {
	align-items: center;
	justify-content: center;
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

.container {
	color: blue;
}
</style>
</head>
<body>

	<h1>User Login</h1>




	<form:form action="/validateUserLogin" method="post"
		modelAttribute="user">


		<table>
			<tr>
				<td><form:label path="userId">
						<b>Username</b>
					</form:label></td>
				<td><form:input type="text" path="userId" /></td>
			</tr>

			<tr>
				<td><form:label path="password">
						<b>Password</b>
					</form:label></td>
				<td><form:input type="password" path="password" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Login" class="registerbtn" /></td>
			</tr>
			<tr>
				<td><input type="button"
					onclick="location.href='/backtohomepage'" value="Back"></td>
			</tr>
		</table>

		<b> <font color="red">${message}</font></b>
		<br>
		<br>

		<a href="/userforgotusername" style="color: white">Forgot
			Username?</a>
		<br>
		<a href="/userforgotpassword" style="color: white">Forgot
			password?</a>

	</form:form>







</body>
</html>