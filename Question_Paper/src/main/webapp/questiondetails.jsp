
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Question Details Page</title>
<style type="text/css">
body {
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
	background-color: #4CAF50;
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
	<h1>Add Question Details</h1>



	<form:form action="/addingQuestionDetails" method="post"
		modelAttribute="question">

		<table>
			<tr>
				<td><form:label path="subjectCode">
						<b>SubjectCode</b>
					</form:label></td>
				<td><form:select type="text" path="subjectCode" items="${sCodes}" /></td>
			</tr>
			<tr>
				<td><form:label path="subject">
						<b>Subject</b>
					</form:label></td>
				<td><form:select type="text" path="subject" items="${subs}"/></td>
			</tr>
			<tr>
				<td><form:label path="qId1">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId1" /></td>
			</tr>
			<tr>
				<td><form:label path="q1">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q1" /></td>
			</tr>
			<tr>
				<td><form:label path="q1c1">
						<b>Choice1</b>
					</form:label></td>
				<td><form:input type="text" path="q1c1" /></td>
			<tr>
				<td><form:label path="q1c2">
						<b>Choice2</b>
					</form:label></td>
				<td><form:input type="text" path="q1c2" /></td>
			</tr>
			<tr>
				<td><form:label path="q1c3">
						<b>Choice3</b>
					</form:label></td>
				<td><form:input type="text" path="q1c3" /></td>
			</tr>
			<tr>
				<td><form:label path="q1c4">
						<b>Choice4</b>
					</form:label></td>
				<td><form:input type="text" path="q1c4" /></td>
			<tr>
				<td><form:label path="a1">
						<b>Answer</b>
					</form:label></td>
				<td><form:input type="text" path="a1" /></td>
			</tr>

			<tr>
				<td><form:label path="m1">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m1" /></td>
			</tr>
			<tr>
				<td><form:label path="qId2">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId2" /></td>
			</tr>
			<tr>
				<td><form:label path="q2">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q2" /></td>
			</tr>
			<tr>
				<td><form:label path="q2c1">
						<b>Choice1</b>
					</form:label></td>
				<td><form:input type="text" path="q2c1" /></td>
			<tr>
				<td><form:label path="q2c2">
						<b>Choice2</b>
					</form:label></td>
				<td><form:input type="text" path="q2c2" /></td>
			</tr>
			<tr>
				<td><form:label path="q2c3">
						<b>Choice3</b>
					</form:label></td>
				<td><form:input type="text" path="q2c3" /></td>
			</tr>
			<tr>
				<td><form:label path="q2c4">
						<b>Choice4</b>
					</form:label></td>
				<td><form:input type="text" path="q2c4" /></td>
			<tr>
				<td><form:label path="a2">
						<b>Answer</b>
					</form:label></td>
				<td><form:input type="text" path="a2" /></td>
			</tr>

			<tr>
				<td><form:label path="m2">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m2" /></td>
			</tr>
			<tr>
				<td><form:label path="qId3">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId3" /></td>
			</tr>
			<tr>
				<td><form:label path="q3">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q3" /></td>
			</tr>
			<tr>
				<td><form:label path="q3c1">
						<b>Choice1</b>
					</form:label></td>
				<td><form:input type="text" path="q3c1" /></td>
			<tr>
				<td><form:label path="q3c2">
						<b>Choice2</b>
					</form:label></td>
				<td><form:input type="text" path="q3c2" /></td>
			</tr>
			<tr>
				<td><form:label path="q3c3">
						<b>Choice3</b>
					</form:label></td>
				<td><form:input type="text" path="q3c3" /></td>
			</tr>
			<tr>
				<td><form:label path="q3c4">
						<b>Choice4</b>
					</form:label></td>
				<td><form:input type="text" path="q3c4" /></td>
			<tr>
				<td><form:label path="a3">
						<b>Answer</b>
					</form:label></td>
				<td><form:input type="text" path="a3" /></td>
			</tr>

			<tr>
				<td><form:label path="m3">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m3" /></td>
			</tr>
			<tr>
				<td><form:label path="qId4">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId4" /></td>
			</tr>
			<tr>
				<td><form:label path="q4">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q4" /></td>
			</tr>
			<tr>
				<td><form:label path="q4c1">
						<b>Choice1</b>
					</form:label></td>
				<td><form:input type="text" path="q4c1" /></td>
			<tr>
				<td><form:label path="q4c2">
						<b>Choice2</b>
					</form:label></td>
				<td><form:input type="text" path="q4c2" /></td>
			</tr>
			<tr>
				<td><form:label path="q4c3">
						<b>Choice3</b>
					</form:label></td>
				<td><form:input type="text" path="q4c3" /></td>
			</tr>
			<tr>
				<td><form:label path="q4c4">
						<b>Choice4</b>
					</form:label></td>
				<td><form:input type="text" path="q4c4" /></td>
			<tr>
				<td><form:label path="a4">
						<b>Answer</b>
					</form:label></td>
				<td><form:input type="text" path="a4" /></td>
			</tr>

			<tr>
				<td><form:label path="m4">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m4" /></td>
			</tr>
			<tr>
				<td><form:label path="qId5">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId5" /></td>
			</tr>
			<tr>
				<td><form:label path="q5">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q5" /></td>
			</tr>
			<tr>
				<td><form:label path="q5c1">
						<b>Choice1</b>
					</form:label></td>
				<td><form:input type="text" path="q5c1" /></td>
			<tr>
				<td><form:label path="q5c2">
						<b>Choice2</b>
					</form:label></td>
				<td><form:input type="text" path="q5c2" /></td>
			</tr>
			<tr>
				<td><form:label path="q5c3">
						<b>Choice3</b>
					</form:label></td>
				<td><form:input type="text" path="q5c3" /></td>
			</tr>
			<tr>
				<td><form:label path="q5c4">
						<b>Choice4</b>
					</form:label></td>
				<td><form:input type="text" path="q5c4" /></td>
			<tr>
				<td><form:label path="a5">
						<b>Answer</b>
					</form:label></td>
				<td><form:input type="text" path="a5" /></td>
			</tr>

			<tr>
				<td><form:label path="m5">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m5" /></td>
			</tr>
			

			<tr>
				<td></td>
				<td><input type="submit" value="Submit" class="registerbtn" />
				</td>
			</tr>
			<tr><td><input type="button"
					onclick="location.href='/backtoadminhomepage'" value="Back"></td></tr>

		</table>
	</form:form>

</body>
</html>