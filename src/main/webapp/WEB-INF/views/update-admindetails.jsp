<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Details</title>
<style type="text/css">
<%@include file="/WEB-INF/css/forforms.css"%>
</style>
<script type="text/javascript">
<%@include file="/WEB-INF/js/admin.js"%>
</script>
</head>
<body>
	<form:form name="form" action="updateadmin" method="post"
		modelAttribute="updateadmindetails">
		<h1>Update Admin Details</h1>
		<div class="form">
			<table>
			<caption>Update Admin</caption>
				<tbody>
					<tr>
						<td><label for="adminID">Admin ID : </label></td>
						<td><form:input path="adminID" name="adminID" onblur="adminIDCheck();" required="true"/></td>
					</tr>
					<tr>
						<td><label for="adminName">Admin Name : </label></td>
						<td><form:input path="adminName" name="adminName" onblur="adminNameCheck();" required="true"/></td>
					</tr>
					<tr>
						<td><label for="adminPassword">Admin Password : </label></td>
						<td><form:input path="adminPassword" name="adminPassword" onblur="adminPasswordCheck();" required="true"/></td>
					</tr>
				</tbody>
			</table>
			<br> <br>
			<form:button>Update Admin</form:button>
		</div>
	</form:form>
</body>
</html>