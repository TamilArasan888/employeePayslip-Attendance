<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Details</title>
<style type="text/css">
<%@include file="/WEB-INF/CSS/forms.css"%>
</style>
</head>
<body>
<div class="form-admin">
			<form:form name="myform" action="addadmin" method="post"
				modelAttribute="addadmindetail">

				<h1>Admin Register Form</h1>
				
				<div class="form-control">
					<label for="adminID">Admin ID : </label>
					<form:input path="adminID" placeholder="Enter Admin Id" />
				</div>
				
				<div class="form-control">
					<label for="adminName">Admin Name : </label>
					<form:input path="adminName" placeholder="Enter Admin Name" />
				</div>
				
				<div class="form-control">
					<label for="adminPassword">Admin Password : </label>
					<form:input type="password" name="password" path="adminPassword"
						placeholder="Enter Admin Password" />
				</div>
				
				<br>
				<br>
				<div>
					<form:button class="button" type="submit" name="submit">
				Add Admin
			</form:button>
			</div>
			</form:form>
			</div>
</body>
</html>