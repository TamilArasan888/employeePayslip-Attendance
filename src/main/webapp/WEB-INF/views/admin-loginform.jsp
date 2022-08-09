<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login page</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root"  align="center">
		<div id="form">
			<form:form action="checkadminlogin" method="post"
				modelAttribute="adminlogindetails">
				<div>
					<h1 align="center">ADMIN LOGIN</h1>
				</div>
			
				<div>
					<label for="adminID">Admin ID : </label>
					<form:input path="adminID" placeholder="Enter Your Admin ID" required="true"/>
					</div>
				<form:errors path="adminID" cssClass="text-danger" />
					
				<div>
					<label for="adminName">Admin Name : </label>
					<form:input path="adminName" placeholder="Enter Admin Name" required="true"/>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				
				<div>
					<label for="adminPassword">Admin Password : </label>
					<form:input path="adminPassword" placeholder="Enter Admin Password" required="true"/>
				</div>
				<form:errors path="adminPassword" cssClass="text-danger" />
				
				<div>
					<form:button>SignIn</form:button>
					<form:button type="reset">Reset</form:button>
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>