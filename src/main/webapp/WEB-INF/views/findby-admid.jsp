<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Admin ByID</title>
<style>
<%@include file="/WEB-INF/css/forforms.css"%>
</style>
</head>
<body>
	<form:form action="" method="post" modelAttribute="getadmindetailsbyid">
		<h1>Admin Details</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="adminID">Admin ID : </label></td>
						<td><form:input path="adminID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="adminName">Admin Name : </label></td>
						<td><form:input path="adminName" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="adminPassword">Admin Password : </label></td>
						<td><form:input path="adminPassword" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
</html>