<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin login page</title>
<style media="screen">
<%@include file="/WEB-INF/css/admin-login.css"%>
</style>
</head>
<body>
<a href="/index"><button class="back-button"
       >Go Back</button></a>
<div class="form">
	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>
	<form:form action="checkadminlogin" method="post"
		modelAttribute="adminlogindetails">

		<h1>ADMIN LOGIN</h1>

		<label for="adminID">Admin ID : </label>
		<form:input id="adminid" path="adminID"
			placeholder="Enter Your Admin ID" required="true" />
		<form:errors path="adminID" cssClass="text-danger" />

		<%-- <label for="adminName">Admin Name : </label>
		<form:input id="adminname" path="adminName"
			placeholder="Enter Admin Name" required="true" />
		<form:errors path="adminName" cssClass="text-danger" /> --%>

		<label for="adminPassword">Admin Password : </label>
		<form:input id="adminpassword" path="adminPassword" type="password"
			placeholder="Enter Admin Password" required="true" />
		<form:errors path="adminPassword" cssClass="text-danger" />

		<form:button>SignIn</form:button>

	</form:form>
	</div>
	<div>
	${message}
	</div>
</body>
</html>