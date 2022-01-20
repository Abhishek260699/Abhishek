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
			<td>Subject</td>
			<td>Subject Code</td>
			<td>Competency</td>
			
		</tr>
			<c:forEach items="${examdetails}" var="examdetail">
			<tr>
				<td>${examdetail.subject }</td>
				<td>${examdetail.subjectCode }</td>
				<td>${examdetail.competency }</td>
				
			</tr>
			</c:forEach>
			<tr>
				<td><input type="button"
					onclick="location.href='/backtoadminhomepage'" value="Back"></td></tr>
			
	</table>
</body>
</html>