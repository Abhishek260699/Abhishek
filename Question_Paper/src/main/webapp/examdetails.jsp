<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam Details Page</title>
</head>
<style type="text/css">
body {
	align-items: center;
	justify-content: center;
	background-image: url(b1.jpg);
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
	padding: 16px 20px;
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
<body>
	<h1>Exam Details</h1>


	<form:form action="/addingExamDetails" method="post"
		modelAttribute="exam">

		<table>
			<tr>
				<td><form:label path="subject">
						<b>Subject</b>
					</form:label></td>
				<td><form:input type="text" path="subject" required="" /></td>
			</tr>

			<tr>
				<td><form:label path="subjectCode">
						<b>Subject Code</b>
					</form:label></td>
				<td><form:input type="text" path="subjectCode" /></td>
			</tr>

			<tr>
				<td><form:label path="competency">
						<b>Competency</b>
					</form:label></td>
				<td><form:select type="text" path="competency"
						items="${competency}" required=""></form:select></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Submit" class="registerbtn" /></td>
			</tr>
			<tr>
				<td><input type="button"
					onclick="location.href='/backtoadminhomepage'" value="Back"></td>
		</table>

	</form:form>


</body>
</html>