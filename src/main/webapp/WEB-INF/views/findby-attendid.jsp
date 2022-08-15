<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Attendance ById</title>
<style>
<%@include file="/WEB-INF/CSS/forforms.css"%>
</style>
</head>
<body>
	<form:form action="" method="post" modelAttribute="getattendance">
		<h1>Attendance Details</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee Id : </label></td>
						<td><form:input path="employeeID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="attendanceID">Attendance ID : </label></td>
						<td><form:input path="attendanceID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="attendanceDate">Attendance Date : </label></td>
						<td><form:input path="attendanceDate" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="inTime">In-Time : </label></td>
						<td><form:input path="inTime" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="outTime">Out-Time : </label></td>
						<td><form:input path="outTime" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="dailyTask">Daily Task Description : </label>
						<td><form:input path="dailyTask" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
</html>