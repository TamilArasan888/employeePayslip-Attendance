<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Details</title>
<style type="text/css">
<%@include file="/WEB-INF/CSS/forforms.css"%>
</style>
</head>
<body>
	<form:form name="myform" onsubmit="return validateform()"
		action="addadmin" method="post" modelAttribute="addadmindetail">
		<h1>Admin Register Form</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="adminID">Admin ID : </label></td>
						<td><form:input path="adminID"
								placeholder="Enter Admin Id" /></td>
					</tr>
					<tr>
						<td><label for="adminName">Admin Name : </label></td>
						<td><form:input path="adminName"
								placeholder="Enter Admin Name" /></td>
					</tr>
					<tr>
						<td><label for="adminPassword">Admin
								Password : </label></td>
						<td><form:input type="password" name="password"
								path="adminPassword" placeholder="Enter Admin Password" /></td>
					</tr>
				</tbody>
			</table>
			<br> <br>
			<form:button type="submit" name="submit">
				Add Admin
			</form:button>
			</div>
	</form:form>
</body>
</html>