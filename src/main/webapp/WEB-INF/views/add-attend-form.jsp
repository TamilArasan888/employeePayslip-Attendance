<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Attendance Details</title>
<style type="text/css">
	<%@include file="/WEB-INF/CSS/forms.css"%>
</style>
</head>
<body>
		<div class="form-attendance">
			<form:form action="addattendance" method="post"
				modelAttribute="addattendancedetail">
				<h1>Attendance Form</h1>

				<%--  <div>
					<label for="attendanceID">Attendance ID : </label>
					<div>
						<form:input path="attendanceID" placeholder="Enter Attendance Id"
							required="true" />
					</div>
				</div> --%>
				<div class="form-control-attendance">
					<label for="attendanceDate">Attendance Date : </label>
					<form:input type="date" path="attendanceDate"
							placeholder="Enter Attendance Date" required="true" />
				</div>

				<div class="form-control-attendance">
					<label for="inTime">In-Time : </label>
					<form:input path="inTime" placeholder="Enter In-Time"
							required="true" />
				</div>

				<div class="form-control-attendance">
					<label for="outTime">Out-Time : </label>
						<form:input path="outTime" placeholder="Enter Out-Time"
							required="true" />
				</div>

				<div class="form-control-attendance">
					<label for="dailyTask">Daily Task Description : </label>
					<form:input path="dailyTask" placeholder="Enter Daily Task"
							required="true" />
				</div>

				<div class="form-control-attendance">
					<label for="employeeID">Employee Id : </label>
					<form:input path="employeeID" placeholder="Enter Employee ID"
							required="true" />
				</div>
<br><br><div>
					<form:button class="button" type="submit" name="submit">Add Attendance</form:button></div>
			</form:form>
			</div>
</body>
</html>