<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details & Attendancelist</title>
</head>
<body>
	<div id="root" align="center">
		<div id="form">
			<form:form action="" method="post"
				modelAttribute="getemployeedetails">
				<div>
					<h3>Employee details with his Attendance list</h3>
				</div>
				<div>
					<label for="employeeID">Employee ID : </label>
					<form:input path="employeeID" readonly="true" />
				</div>

				<div>
					<label for="employeeFirstName">Employee FirstName : </label>
					<form:input path="employeeFirstName" readonly="true" />
				</div>

				<div>
					<label for="employeeLastName">Employee LastName : </label>
					<form:input path="employeeLastName" readonly="true" />
				</div>

				<div>
					<label for="employeeGender">Gender : </label>
					<form:input path="employeeGender" readonly="true" />
				</div>

				<div>
					<label for="employeeDOB">Date Of Birth : </label>
					<form:input path="employeeDOB" readonly="true" />
				</div>

				<div>
					<label for="employeeEmail">Email : </label>
					<form:input path="employeeEmail" readonly="true" />
				</div>

				<div>
					<label for="employeePassword">Password : </label>
					<form:input path="employeePassword" readonly="true" />
				</div>

				<div>
					<label for="employeePhoneNumber">Phone Number : </label>
					<form:input path="employeePhoneNumber" readonly="true" />
				</div>

				<div>
					<label for="employeeAddress">Address : </label>
					<form:input path="employeeAddress" readonly="true" />
				</div>

				<div>
					<label for="employeeJobID">Job ID : </label>
					<form:input path="employeeJobID" readonly="true" />
				</div>

				<div>
					<label for="employeeRole">Employee Role : </label>
					<form:input path="employeeRole" readonly="true" />
				</div>

				<div>
					<label for="employeeManager">Manager Name : </label>
					<form:input path="employeeManager" readonly="true" />
				</div>

				<div>
					<label for="employeeHireDate">HireDate : </label>
					<form:input path="employeeHireDate" readonly="true" />
				</div>

				<div>
					<label for="employeeWorkingHours">WorkingHours : </label>
					<form:input path="employeeWorkingHours" readonly="true" />
				</div>
			</form:form>
		</div>
	</div>


	<div>
		<h3>Attendance list</h3>
	</div>
	<div id="table root">
		<table border='2' width='100%' cellpadding='2'>
			<thead>
				<tr>
					<th>Attendance Id</th>
					<th>Attendance Date</th>
					<th>In-Time</th>
					<th>Out-Time</th>
					<th>Daily Task Description</th>
					<th>Employee ID</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="attendance" items="${attendancedetails}">
					<tr>
						<td>${attendance.attendanceID}</td>
						<td>${attendance.attendanceDate}</td>
						<td>${attendance.inTime}</td>
						<td>${attendance.outTime}</td>
						<td>${attendance.dailyTask}</td>
						<td>${attendance.employeeID}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>