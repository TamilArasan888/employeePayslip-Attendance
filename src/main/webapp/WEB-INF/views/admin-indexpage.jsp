<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Index Page</title>
<style>
<%@ include file="/WEB-INF/css/admin-index.css"%>
</style>
</head>
<body>
	<h1>Welcome Admin</h1>
	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Admin
			</button>
			<div class="dropdown-content">
				<a href="/admindetails/addadmindetailsbyuser">Add a new admin</a> <a
					href="/admindetails/adminlist">View all admins details</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Employees
			</button>
			<div class="dropdown-content">
				<a href="/employeedetails/addemployeedetails">Add a new employee</a>
				<a href="/employeedetails/employeelistforadmin">View all
					employees details</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Payslip
			</button>
			<div class="dropdown-content">
				<a href="/payslipdetails/addpayslipdetails">Add payslip to
					employee</a> <a href="/payslipdetails/paysliplistforadmin">View all
					payslip details</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Attendance
			</button>
			<div class="dropdown-content">
				<a href="/attendancedetails/addattendancedetails">Add attendance
					for employee </a> <a href="/attendancedetails/attendancelistforadmin">View
					all employee attendance details</a>
			</div>
		</div>
			<div class="navbar-right">
			<a href="/employeedetails/logout">Log Out</a>
		<a href="/admindetails/adminlogin">Back</a> 
		
	</div>
	</div>
		

</body>
</html>