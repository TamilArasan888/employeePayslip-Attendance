<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Out Time Attendance</title>
<style type="text/css">
	<%@include file="/WEB-INF/css/forms.css"%>
</style>
</head>
<body>
<div class="form-attendance">
			<form:form name="form" action="timeattendance" method="post"
				modelAttribute="updatetimeattendance">
				<h1>Out-Time Attendance Form</h1>
				<div>
					<div>
						<form:input path="attendanceID" placeholder="Enter Attendance Id"
							required="true" type="hidden"/>
					</div>
				</div>
				<div class="form-control-attendance">
					<label for="attendanceDate">Attendance Date : </label>
					<form:input path="attendanceDate" type="date" id="attendanceDate" name="attendanceDate" onblur="attendanceDateCheck();"
							placeholder="Enter Attendance Date" required="true" readonly="true"/>
				</div>
				
				<div class="form-control-attendance">
					<label for="inTime">In-Time : </label>
					<form:input path="inTime" type="time" id="intime"  name="inTime" onblur="inTimeCheck();" placeholder="Enter In-Time"
							required="true" readonly="true"/>
				</div>
				
				<div class="form-control-attendance">
					<label for="outTime">Out-Time : </label>
						<form:input path="outTime" type="time" id="outtime"  name="outTime" onblur="outTimeCheck();" placeholder="Enter Out-Time"
							required="true" />
				</div>
				
				<div class="form-control-attendance">
					<label for="dailyTask">Daily Task Description : </label>
					<form:input path="dailyTask" name="dailyTask" onblur="dailyTaskCheck();" placeholder="Enter Daily Task"
							required="true" />
				</div>
				
				<div class="form-control-attendance">
					<label for="employeeID">Employee Id : </label>
					<form:input path="employeeID" name="employeeID" onblur="employeeIDCheck();" placeholder="Enter Employee ID"
							required="true" value='<%=session.getAttribute("employeeId")%>' readonly="true"/>
				</div>
<br><div>
					<form:button class="button" type="submit" name="submit">Add Attendance</form:button>
					</div>
			</form:form>
			</div>
				
</body>
</html>