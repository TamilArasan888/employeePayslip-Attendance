<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login page</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="checkadminlogin" method="post"
				modelAttribute="adminlogindetails">
				<div>
					<h1 align="center">ADMIN LOGIN</h1>
				</div>
				<table>
				<tr>
					<td><label for="adminID">Admin ID : </label></td>
					<td><form:input path="adminID" /></td>
					</tr>
				<tr>
					<td><label for="adminName">Admin Name : </label></td>
					<td><form:input path="adminName" /></td>
				</tr>
				<tr>
					<td><label for="adminPassword">Admin Password : </label></td>
					<td><form:input path="adminPassword" /></td>
				</tr>
				<tr>
					<td><form:button value="SignIn">SignIn</form:button></td>
					<td><form:button type="reset" value="Clear">Reset</form:button></td>
				</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>