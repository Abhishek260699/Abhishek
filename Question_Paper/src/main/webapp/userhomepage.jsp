<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Homepage</title>
<style type="text/css">
body {
	background-image: url(b7.jpg);
	color: white;
	
}
h1 {

	font-size: 3em;
	font-weight: 500;
	text-align: center;
}
.registerbtn1 {
  background-color: navy;
  border-color: grey;
  color: white;
  font-size: 22px;
  font-weight: bold;
  padding:15px;
  margin: 8px 0;
  border-radius:5px;
  cursor: pointer;
  width: 300px;
  opacity: 0.9;
  position: absolute;
         top: 200px;
         left: 540px;
}

 .logout{
       background-color: #4CAF99;
  border-color: grey;
  color: black;
  font-size: 15px;
  font-weight: bold;
  padding:10px;
  margin: 8px 0;
  border-radius:5px;
  cursor: pointer;
  width: 80px;
  opacity: 0.9;
  position: absolute;
         top: 8px;
         right:50px;
  }
.registerbtn1:hover {
  opacity:1;
}

</style>
</head>
<body>
	
		<h1>Welcome User!!</h1>

		<input type="button" value="Take Assessmemt" onclick="location.href='/viewAssesments'" class="registerbtn1"> 
		<br> <br>
		
		<input class="logout" type="button" onclick="location.href='/userlogout'" value="Logout">
	<br><br>

</body>
</html>