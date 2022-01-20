<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Homepage</title>
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
  background-color: blue;
  border-color: grey;
  color: white;
  font-size: 22px;
  font-weight: bold;
  padding:15px;
  margin: 8px 0;
  border-radius:10px;
  cursor: pointer;
  width: 300px;
  opacity: 0.9;
  position: absolute;
         top: 200px;
         left: 300px;
}
.registerbtn2 {
   background-color: black;
  border-color: grey;
  color: white;
  font-size: 22px;
  font-weight: bold;
  padding:15px;
  margin: 8px 0;
  border-radius:10px;
  cursor: pointer;
  width: 300px;
  opacity: 0.9;
  position: absolute;
         top: 200px;
         right: 300px;
}
.registerbtn3 {
   background-color: black;
  border-color: grey;
  color: white;
  font-size: 22px;
  font-weight: bold;
  padding:15px;
  margin: 8px 0;
  border-radius:10px;
  cursor: pointer;
  width: 300px;
  opacity: 0.9;
  position: absolute;
         top: 300px;
         left: 300px
}
 .logout{
       background-color: navy;
  border-color: grey;
  color: white;
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
.registerbtn2:hover {
  opacity:1;
}
</style>
</head>
<body>


		<h1>Welcome Admin!!</h1>
		
<br><br><br><br>

			<input type="button" onclick="location.href='/addExamDetails'"
				value="Add Exam Details" class="registerbtn1" />
			<br>
			<br>


			<input type="button" onclick="location.href='/addQuestionDetails'"
				value="Add Question Details" class="registerbtn2" />
			<br>
			<br>
			<input type="button" onclick="location.href='/showexamdetails'"
				value="See Exam Details" class="registerbtn3" />

		<input class="logout" type="button" onclick="location.href='/adminlogout'" value="Logout" class="logout">
						



</body>
</html>