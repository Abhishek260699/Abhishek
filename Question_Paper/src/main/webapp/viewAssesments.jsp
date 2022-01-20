<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Subject Code</th>
			<th>Subject Name</th>
			<th>Competency Level</th>
			<th></th>
		</tr>
		<c:forEach items="${Assesments}" var="assess">
			<tr>
				<td>${assess.subjectCode}</td>
				<td>${assess.subject}</td>
				<td>${assess.competency}</td>
				<td><input type="button" value="Attempt"
					onclick="location.href='/attemptAssesment?code=${assess.subjectCode}'"></td>
			</tr>
		</c:forEach>
		<tr>
			<td><input type="button"
				onclick="location.href='/backtouserhomepage'" value="Back"></td>
		</tr>
	</table>

</body>
</html>