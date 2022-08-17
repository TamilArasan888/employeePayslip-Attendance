<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Employee Index Page</title>
<style type="text/css">
<%@include file="/WEB-INF/css/employee-index.css"%>
</style>
</head>
<body>
	<h1>Welcome Employee</h1>
	<div class="navbar">
	
		<a href="/employeedetails/getemployeepaysliplist?id=${employeeId}">PaySlip</a>
		
		<div class="dropdown">
			<button class="dropbtn">
				Attendance
			</button>
			
			<div class="dropdown-content">
				<a href="/attendancedetails/addattendancedetails">To Put
					Attendance</a> <a
					href="/employeedetails/getemployeeattendancelist?id=${employeeId}">To
					View Attendance Details</a>

			</div>
		</div>
		<div class="navbar-right">
				<a href="/employeedetails/employeelogin">Log Out</a>
			</div>
	</div>
</body>
</html>