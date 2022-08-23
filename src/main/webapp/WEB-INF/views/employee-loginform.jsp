<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<style>
<%@ include file="/WEB-INF/css/employee-login.css"%>
</style>
</head>
<body>
<a href="/index"><button class="back-button"
	>Go Back</button></a>
		<div class="form">
			<form:form action="checkemployeelogin" method="post"
				modelAttribute="employeelogindetails">
				<h1>EMPLOYEE LOGIN</h1>

				<div class="empid">
					<strong><label for="employeeID">Employee ID : </label></strong>
					<form:input path="employeeID" id="input" placeholder="Enter Your Employee ID" required="true" />
				</div>

				<%-- <div class="empemail">
					<strong><label for="employeeEmail">Email : </label></strong>
					<form:input path="employeeEmail" id="input" placeholder="Enter Your Email" required="true"/>
				</div> --%>

				<div class="emppass">
					<strong><label for="employeePassword">Password : </label></strong>
					<form:input path="employeePassword"  id="input" placeholder="Enter Your Password" type="password" required="true"/>
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