<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Attendance Details</title>
<style type="text/css">
	<%@include file="/WEB-INF/CSS/forforms.css"%>
</style>
</head>
<body>
		
			<form:form action="addattendance" method="post"
				modelAttribute="addattendancedetail">
				<h1>Attendance Form</h1>

				<%--  <tr>
					<label for="attendanceID">Attendance ID : </label>
					<tr>
						<form:input path="attendanceID" placeholder="Enter Attendance Id"
							required="true" />
					</tr>
				</tr> --%>
<div class="form">
<table>
<tbody>
				<tr>
					<td><label for="attendanceDate">Attendance Date : </label></td>
					<td><form:input type="date" path="attendanceDate"
							placeholder="Enter Attendance Date" required="true" /></td>
				</tr>

				<tr>
					<td><label for="inTime">In-Time : </label></td>
					<td><form:input path="inTime" placeholder="Enter In-Time"
							required="true" /></td>
				</tr>

				<tr>
					<td><label for="outTime">Out-Time : </label></td>
						<td><form:input path="outTime" placeholder="Enter Out-Time"
							required="true" /></td>
				</tr>

				<tr>
					<td><label for="dailyTask">Daily Task Description : </label></td>
					<td><form:input path="dailyTask" placeholder="Enter Daily Task"
							required="true" /></td>
				</tr>

				<tr>
					<td><label for="employeeID">Employee Id : </label></td>
					<td><form:input path="employeeID" placeholder="Enter Employee ID"
							required="true" /></td>
				</tr>
</tbody>
</table>
<br><br>
					<form:button type="submit" name="submit">Add Attendance</form:button>
					</div>
			</form:form>
</body>
</html>