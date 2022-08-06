<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<style>
a {
	color: black;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="checkemployeelogin" method="post"
				modelAttribute="employeelogindetails">
				<div>
					<h1 align="center">EMPLOYEE LOGIN</h1>
				</div>
				<table>
					<tr>
						<td><label for="employeeID">Employee ID : </label></td>
						<td><form:input path="employeeID" /></td>
					</tr>
					<tr>
						<td><label for="employeeEmail">Email : </label></td>
						<td><form:input path="employeeEmail" /></td>
					</tr>
					<tr>
						<td><label for="employeePassword">Password : </label></td>
						<td><form:input path="employeePassword" /></td>
					</tr>
					<tr>
						<td><form:button value="SignIn">SignIn</form:button></td>
						<td><form:button value="AddEmployee">
								<a href="/employeedetails/addemployeedetails"
									style="text-decoration: none">SignUp</a>
							</form:button></td>
						<td><form:button type="reset" value="Clear">Reset</form:button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>