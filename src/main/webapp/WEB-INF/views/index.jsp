<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
body {
	background-image:
		url("https://images.pexels.com/photos/129731/pexels-photo-129731.jpeg?cs=srgb&dl=pexels-fwstudio-129731.jpg&fm=jpg.jpg");
	background-width: 1366px;
	background-height: 768px;
	background-attachment: fixed;
	background-size: cover;
}

h1 {
	font-family: "Audiowide", sans-serif;
	font-color: white;
	font-style: oblique;
	font-variant: small-caps;
	font-size: 35px;
	font-style: oblique;
}

.layout {
	width: 400px;
	height: 400px;
	padding: 50px;
	border: 6px solid black;
}
a{
color: #0703fc;
}
</style>
</head>
<body>
	<div id="form" align="center">
		<form:form action="index" method="post">
			<h1>Welcome To Employee PaySlip & Attendance
				System</h1>
			<div class="layout">
				<div class="admin">
					<h2>
						<a href="/admindetails/adminlogin" style="text-decoration:none">ADMIN</a>
					</h2>
				</div>
				<div>
					<h2>
						<a href="/employeedetails/employeelogin" style="text-decoration:none">EMPLOYEE</a>
					</h2>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>