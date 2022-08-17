<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Details</title>
<style type="text/css">
<%@include file="/WEB-INF/css/forms.css"%>
</style>
<script type="text/javascript">
<%@include file="/WEB-INF/js/admin.js"%>
</script>
</head>
<body>
<div class="form-admin">
			<form:form action="addadmin" method="post"
				modelAttribute="addadmindetail" name="form">

				<h1>Admin Register Form</h1>
				
				<div class="form-control">
					<label for="adminID">Admin ID : </label>
					<form:input path="adminID" name="adminID" onblur="adminIDCheck();" placeholder="Enter Admin Id" required="true"/>
				</div>
				
				<div class="form-control">
					<label for="adminName">Admin Name : </label>
					<form:input path="adminName" name="adminName" onblur="adminNameCheck();" placeholder="Enter Admin Name" required="true"/>
				</div>
				
				<div class="form-control">
					<label for="adminPassword">Admin Password : </label>
					<form:input type="password" name="adminPassword" onblur="adminPasswordCheck();" path="adminPassword"
						placeholder="Enter Admin Password" required="true"/>
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