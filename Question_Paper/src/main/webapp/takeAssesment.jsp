<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="/validateAnswers" method="post"
		modelAttribute="qnPaper">

		<table>
			<tr>
				<td><form:label path="subjectCode">
						<b>SubjectCode</b>
					</form:label></td>
				<td><form:input type="text" path="subjectCode" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="subject">
						<b>Subject</b>
					</form:label></td>
				<td><form:input type="text" path="subject" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="qId1">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId1" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="q1">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q1" size="60" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="a1">Pick Your answer</form:label></td>
				<td>${q1c1}<form:radiobutton value="${q1c1}" path="a1" /></td>
				<td>${q1c2}<form:radiobutton value="${q1c2}" path="a1" /></td>
				<td>${q1c3}<form:radiobutton value="${q1c3}" path="a1" /></td>
				<td>${q1c4}<form:radiobutton value="${q1c4}" path="a1" /></td>
			</tr>

			<tr>
				<td><form:label path="m1">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m1" readonly="true" /></td>
			</tr>

			<tr>
				<td><form:label path="qId2">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId2" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="q2">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q2" size="60" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="a2">Pick Your answer</form:label></td>
				<td>${q2c1}<form:radiobutton value="${q2c1}" path="a2" /></td>
				<td>${q2c2}<form:radiobutton value="${q2c2}" path="a2" /></td>
				<td>${q2c3}<form:radiobutton value="${q2c3}" path="a2" /></td>
				<td>${q2c4}<form:radiobutton value="${q2c4}" path="a2" /></td>
			</tr>

			<tr>
				<td><form:label path="m2">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m2" readonly="true" /></td>
			</tr>

			<tr>
				<td><form:label path="qId3">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId3" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="q3">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q3" size="60" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="a3">Pick Your answer</form:label></td>
				<td>${q3c1}<form:radiobutton value="${q3c1}" path="a3" /></td>
				<td>${q3c2}<form:radiobutton value="${q3c2}" path="a3" /></td>
				<td>${q3c3}<form:radiobutton value="${q3c3}" path="a3" /></td>
				<td>${q3c4}<form:radiobutton value="${q3c4}" path="a3" /></td>
			</tr>

			<tr>
				<td><form:label path="m3">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m3" readonly="true" /></td>
			</tr>

			<tr>
				<td><form:label path="qId4">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId4" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="q4">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q4" size="60" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="a4">Pick Your answer</form:label></td>
				<td>${q4c1}<form:radiobutton value="${q4c1}" path="a4" /></td>
				<td>${q4c2}<form:radiobutton value="${q4c2}" path="a4" /></td>
				<td>${q4c3}<form:radiobutton value="${q4c3}" path="a4" /></td>
				<td>${q4c4}<form:radiobutton value="${q4c4}" path="a4" /></td>
			</tr>

			<tr>
				<td><form:label path="m4">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m4" readonly="true" /></td>
			</tr>

			<tr>
				<td><form:label path="qId5">
						<b>Question_id</b>
					</form:label></td>
				<td><form:input type="text" path="qId5" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="q5">
						<b>Question</b>
					</form:label></td>
				<td><form:input type="text" path="q5" size="60"  adonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="a5">Pick Your answer</form:label></td>
				<td>${q5c1}<form:radiobutton value="${q5c1}" path="a5" /></td>
				<td>${q5c2}<form:radiobutton value="${q5c2}" path="a5" /></td>
				<td>${q5c3}<form:radiobutton value="${q5c3}" path="a5" /></td>
				<td>${q5c4}<form:radiobutton value="${q5c4}" path="a5" /></td>
			</tr>

			<tr>
				<td><form:label path="m5">
						<b>Marks</b>
					</form:label></td>
				<td><form:input type="text" path="m5" readonly="true" /></td>
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