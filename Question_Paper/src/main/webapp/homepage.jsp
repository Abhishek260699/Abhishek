<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Question Paper Generator</title>
<style type="text/css">
html {
	font-family: "helvetica neue", "Arial", "sasn-serif";
}

body {
	align-items: center;
	justify-content: center;
	margin: 0;
	padding: 0;
	height: 100%;
	background-color: yellow;
	justify-content: center;
	margin: 0;
	padding: 0;
	height: 100%;
	padding: 0;
}

select {
	font-size: 15px;
	padding: 7px;
	font-weight: bold;
	background: white;
	margin: 8px 0;
	color: black;
	border-radius: 15px;
	width:25%;
	opacity: 0.9;
	cursor: pointer;
}
 


.center {
	background-image: url(home1.jpg);
	height: 900px;
	text-align: center;
}

h1 {
top:200px;
	font-size: 4em;
	font-weight: 500;
	color: black;
	text-align: center;
}

.select1 {
	font-size: 1.8em;
	align-self: center;
	backposition: absolute;
	top: 250px;
	left: 460px;
}

.select2 {
	align-self: center;
	font-size: 1.8em;
	position: absolute;
	top: 255px;
	left: 465px;
}

#content {
	width: 440px;
	margin: 0 auto;
	border: 10px solid black;
	padding: 2rem;
	background: #ffffff;
}

.submit {
	background-color:teal;
	color: white;
	font-size: 15px;
	font-weight: bold;
	padding: 10px;
	margin: 8px 0;
	border-radius: 5px;
	cursor: pointer;
	width: 80px;
	opacity: 0.9;
	position: absolute;
	top: 340px;
	left: 620px;
}
</style>
</head>
<body>

	<div class="center">

		<h1>Question Paper Generator</h1>
		<div id="content">
			<form:form action="/operation" method="post" modelAttribute="example">
				<div class="select1">
					<form:label path="role" name="category">Select your category :</form:label>
					<form:select type="text" path="role" items="${role}"></form:select>
				</div>
				<div class="select2">
					<form:label path="operation">What you want to do ?</form:label>
					<form:select type="text" path="operation" items="${operation}"></form:select>
				</div>
				<br>
				<br>
				<input type="submit" value="submit" class="submit">
			</form:form>

		</div>
	</div>
</body>
</html>