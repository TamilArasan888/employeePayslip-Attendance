<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<style>
body {
	background-image: url(https://images.pexels.com/photos/1631677/pexels-photo-1631677.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
	background-repeat: no-repeat;
	background-size: 1366px 768px;
	text-align: center;
}

h1 {
	font-family: lucida Handwriting, Cursive;
	color: white;
	font-size: 45px;
}
.empid{
margin: 14px 0px 14px 0px;
}
.empid label{
font-size: 35px;
}
.empid input{
width: 20%;
height: 25px;
margin-left: 20px;
font-size: 17px;
}

.empemail{
margin: 14px 0px 14px 0px;
}
.empemail label{
font-size: 35px;
}
.empemail input{
width: 20%;
height: 25px;
margin-left: 135px;
font-size: 17px;
}

.emppass{
margin: 14px 0px 14px 0px;
}
.emppass label{
font-size: 35px;
}
.emppass input{
width: 20%;
height: 25px;
margin-left: 80px;
font-size: 17px;
}

label {
	font-family: Copperplate, Papyrus, fantasy;
	color: black;
}

#input{
border-radius: 10px;
}

.login-form {
	width: 75px;
	height: 30px;
	font-size: 17px;
	background-color: black;
	border: 1px solid blue;
	border-radius: 20px;
	color: white;
}
</style>
</head>
<body>
		<div class="form">
			<form:form action="checkemployeelogin" method="post"
				modelAttribute="employeelogindetails">
				<h1>EMPLOYEE LOGIN</h1>

				<div class="empid">
					<strong><label for="employeeID">Employee ID : </label></strong>
					<form:input path="employeeID" id="input" placeholder="Enter Your Employee ID"/>
				</div>

				<div class="empemail">
					<strong><label for="employeeEmail">Email : </label></strong>
					<form:input path="employeeEmail" id="input" placeholder="Enter Your Email"/>
				</div>

				<div class="emppass">
					<strong><label for="employeePassword">Password : </label></strong>
					<form:input path="employeePassword"  id="input" placeholder="Enter Your Password" type="password"/>
				</div>

				<div>
					<form:button class="login-form">SignIn</form:button>
					<form:button class="login-form" style="margin-left: 12px;">
						<a href="/employeedetails/addemployeedetails"
							style="text-decoration: none; color: white;">SignUp</a>
					</form:button>
				</div>
			</form:form>
		</div>
</body>
</html>