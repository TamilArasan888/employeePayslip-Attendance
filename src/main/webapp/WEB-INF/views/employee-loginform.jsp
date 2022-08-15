<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
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
	<div id="root" style="width: auto;">
		<div class="form">
			<form:form action="checkemployeelogin" method="post"
				modelAttribute="employeelogindetails">
				<h1 style="font-size: 45px;">EMPLOYEE LOGIN</h1>

				<div style="margin: 14px 0px 14px 0px;">
					<strong><label for="employeeID" style="font-size: 35px;">Employee
							ID : </label></strong>
					<form:input path="employeeID" id="input" placeholder="Enter Your Employee ID"
						style="width: 20%;height: 25px;margin-left: 20px;font-size: 17px;" />
				</div>

				<div style="margin: 14px 0px 14px 0px;">
					<strong><label for="employeeEmail" style="font-size: 35px;">Email :
					</label></strong>
					<form:input path="employeeEmail" id="input" placeholder="Enter Your Email"
						style="width: 20%;height: 25px;font-size: 17px;" />
				</div>

				<div style="margin: 14px 0px 14px 0px;">
					<strong><label for="employeePassword" style="font-size: 35px;">Password
						: </label></strong>
					<form:input path="employeePassword"
						placeholder="Enter Your Password" id="input" type="password"
						style="width: 20%;height: 25px;font-size: 17px;" />
				</div>

				<div style="margin-top: 20px; margin-left: 30px;">
					<form:button class="login-form">SignIn</form:button>
					<form:button class="login-form" style="margin-left: 12px;">
						<a href="/employeedetails/addemployeedetails"
							style="text-decoration: none; color: white;">SignUp</a>
					</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>