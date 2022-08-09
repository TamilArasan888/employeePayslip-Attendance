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
	background-image:
		url(https://wallpaperaccess.com/full/4321865.jpg);
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
}

.login-form {
	width: 75px;
	height: 30px;
	font-size: 17px;
	background-color: lightblue;
	border: 1px solid blue;
	border-radius: 3px;
	color: blue;
}
</style>
</head>
<body>
	<div id="root" style="width: auto;">
		<div id="form" align="center">
			<form:form action="checkemployeelogin" method="post"
				modelAttribute="employeelogindetails">
				<h1 style="font-size: 45px;">EMPLOYEE LOGIN</h1>

				<div style="margin: 14px 0px 14px 0px;">
					<label for="employeeID" style="font-size: 35px;">Employee
						ID : </label>
					<form:input path="employeeID" placeholder="Enter Your Employee ID"
						style="width: 20%;height: 35px;margin-left: 20px;font-size: 17px;" />
				</div>

				<div style="margin: 14px 0px 14px 0px;">
					<label for="employeeEmail" style="font-size: 35px;">Email :
					</label>
					<form:input path="employeeEmail" placeholder="Enter Your Email"
						style="width: 20%;height: 35px;font-size: 17px;" />
				</div>

				<div style="margin: 14px 0px 14px 0px;">
					<label for="employeePassword" style="font-size: 35px;">Password
						: </label>
					<form:input path="employeePassword"
						placeholder="Enter Your Password" type="password"
						style="width: 20%;height: 35px;font-size: 17px;" />
				</div>

				<div style="margin-top: 20px; margin-left: 42px;">
					<form:button class="login-form">SignIn</form:button>
					<form:button class="login-form" style="margin-left: 12px;">
						<a href="/employeedetails/addemployeedetails"
							style="text-decoration: none">SignUp</a>
					</form:button>
					<form:button class="login-form" type="reset">Reset</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>