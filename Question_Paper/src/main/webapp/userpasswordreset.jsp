<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password reset</title>
<style type="text/css">
body {
	background-image: url(b5.jpg);
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
	<form:form action="/updateuserpassword" method="get"
		modelAttribute="user">
		<h1>Update your Password</h1>
		<table>
			<tr>
				<td><form:label path="userId">User Id:</form:label></td>
				<td><form:input path="userId" readonly="true" /></td>
			</tr>

			<tr>
				<td><form:label path="password">New Password</form:label></td>
				<td><form:input type="password" path="password"
						placeholder="Enter the new password" required="required" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Submit" class="registerbtn" />
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>