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
	<form:form action="updateadmin" method="post"
		modelAttribute="updateadmindetails">
		<h1>Update Admin Details</h1>
		<div class="form">
			<table>
				<tbody>
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
				</tbody>
			</table>
			<br> <br>
			<form:button>Update Admin Details</form:button>
		</div>
	</form:form>
</body>
</html>