<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Attendance Details</title>
<style>
<%@include file="/WEB-INF/css/forforms.css"%>
</style>
<script type="text/javascript">
<%@include file="/WEB-INF/js/attendance.js"%>
</script>
</head>
<body>
	<form:form name="form" action="updateattendance" method="post"
		modelAttribute="updateattendancedetails">
		<h1>Update Attendance Details</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee Id : </label></td>
						<td><form:input path="employeeID" name="employeeID" onblur="employeeIDCheck();"/></td>
					</tr>
					<tr>
						<td><label for="attendanceID">Attendance ID : </label></td>
						<td><form:input path="attendanceID" /></td>
					</tr>
					<tr>
						<td><label for="attendanceDate">Attendance Date : </label></td>
						<td><form:input path="attendanceDate" name="attendanceDate" onblur="attendanceDateCheck();"/></td>
					</tr>
					<tr>
						<td><label for="inTime">In-Time : </label></td>
						<td><form:input path="inTime" name="inTime" onblur="inTimeCheck();"/></td>
					</tr>
					<tr>
						<td><label for="outTime">Out-Time : </label></td>
						<td><form:input path="outTime" name="outTime" onblur="outTimeCheck();" /></td>
					</tr>
					<tr>
						<td><label for="dailyTask">Daily Task Description : </label></td>
						<td><form:input path="dailyTask" name="dailyTask" onblur="dailyTaskCheck();"/></td>
					</tr>
				</tbody>
			</table>
			<br> <br>
			<form:button>Update Attendance</form:button>
		</div>
	</form:form>
</body>
</html>