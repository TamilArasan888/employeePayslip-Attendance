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
	<h1>Welcome ${name}</h1>


	<div class="navbar">
		<a href="/employeedetails/getemployeepaysliplist?id=${employeeId}">PaySlip</a>
		
		<div class="dropdown">
			<button class="dropbtn">
				Put Attendance
			</button>
			
			<div class="dropdown-content">
				<a href="/attendancedetails/addattendancedetails">In-Time
					Attendance</a>
					 <a
					href="/attendancedetails/updatetimeattendance?empId=${employeeId}">Out-Time
					Attendance</a>
			</div></div>
			 <a
					href="/employeedetails/getemployeeattendancelist?id=${employeeId}">View
					Attendance Details</a>
			
	<div class="navbar-right">
		<a href="/employeedetails/employeelogin">Back</a> <a href="/employeedetails/logout">Log
			Out</a>
	</div></div>
</body>
</html>