<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Index Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

.navbar {
	overflow: hidden;
	background-color: #333;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}
.dropdown dropbtnlogout{
	float:right;
	overflow:hidden;
}
.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<h1 align="center">Welcome Admin</h1>
	
	<div class="navbar">
	<div class="dropdown">
			<button class="dropbtn">
				Admin <i class="fa fa-caret-down"></i>
			</button>
			 <div class="dropdown-content">
				<a href="/admindetails/addadmindetailsbyuser">Add a new admin</a> 
				<a href="/admindetails/adminlist">View all admins details</a>                             
		</div>
		</div>
		
		<div class="dropdown">
			<button class="dropbtn">
				Employees <i class="fa fa-caret-down"></i>
			</button>
			 <div class="dropdown-content">
				<a href="/employeedetails/addemployeedetails">Add a new employee</a> 
				<a href="/employeedetails/employeelistforadmin">View all employees details</a>                             
		</div>
		</div>
		
		<div class="dropdown">
			<button class="dropbtn">
				Payslip <i class="fa fa-caret-down"></i>
			</button>
			 <div class="dropdown-content">
				<a href="/payslipdetails/addpayslipdetails">Add payslip to employee</a> 
				<a href="/payslipdetails/paysliplistforadmin">View all payslip details</a>                             
		</div>
		</div>
		
		<div class="dropdown">
			<button class="dropbtn">
				Attendance <i class="fa fa-caret-down"></i>
			</button>
			 <div class="dropdown-content">
				<a href="/attendancedetails/addattendancedetails">Add attendance for employee </a> 
				<a href="/attendancedetails/attendancelistforadmin">View all employee attendance details</a>                             
		</div>
		</div>
		</div>
		
</body>
</html>