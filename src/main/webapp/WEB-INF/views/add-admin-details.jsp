<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Details</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root" align="center">
		<div id="form">
			<form:form action="addadmin" method="post"
				modelAttribute="addadmindetail">
				<h1>Admin Register Form</h1>
				<div>
					<label for="adminID">Admin ID : </label>
					<div>
						<form:input path="adminID" placeholder="Enter Admin Id" required="true"/>
					</div>
				</div>
				<form:errors path="adminID" cssClass="text-danger" />
				<div>
					<label for="adminName">Admin Name : </label>
					<div>
						<form:input path="adminName" placeholder="Enter Admin Name" required="true"/>
					</div>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				<div>
					<label for="adminPassword">Admin Password : </label>
					<div>
						<form:input type="password" path="adminPassword" placeholder="Enter Admin Password" required="true"/>
					</div>
				</div>
				<form:errors path="adminPassword" cssClass="text-danger" />
				<div>
					<form:button>Add Admin</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>