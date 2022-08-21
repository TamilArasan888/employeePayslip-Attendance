<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Employee Details & Attendancelist</title>
<style>
<%@include file="/WEB-INF/css/for-formsandtables.css"%>
</style>
</head>
<body>
<button class="back-button"
        onclick="history.back()">Go Back</button>
	<form:form action="" method="post" modelAttribute="getemployeedetails">
		<h1>Employee details with his Attendance list</h1>
		<div class="form">
			<table>
			<caption></caption>
			<tr><th></th></tr>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee ID : </label></td>
						<td>
					<form:input path="employeeID" readonly="true" /></td>
						</tr>
					<tr>
						<td><label for="employeeFirstName">Employee FirstName : </label></td>
						<td>
					<form:input path="employeeFirstName" readonly="true" />
						</td>
						</tr>

					<tr>
						<td><label for="employeeLastName">Employee LastName :
						</label></td>
						<td>
					<form:input path="employeeLastName" readonly="true" />
						</td>
						</tr>

					<tr>
						<td><label for="employeeEmail">Email : </label></td>
						<td>
					<form:input path="employeeEmail" readonly="true" />
						</td>
						</tr>

					<tr>
						<td><label for="employeeJobID">Job ID : </label></td>
						<td>
					<form:input path="employeeJobID" readonly="true" />
						</td>
						</tr>

					<tr>
						<td><label for="employeeRole">Employee Role : </label></td>
						<td>
					<form:input path="employeeRole" readonly="true" />
						</td>
						</tr>

					<tr>
						<td><label for="employeeManager">Manager Name : </label></td>
						<td>
					<form:input path="employeeManager" readonly="true" />
						</td>
						</tr>
				</tbody>
			</table>
		</div>
	</form:form>


	<div>
		<h1>Attendance list</h1>
	</div>
	<div class="list">
		<table>
		<caption></caption>
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