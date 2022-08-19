<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Attendance Details</title>
<style type="text/css">
	<%@include file="/WEB-INF/css/forms.css"%>
button{
margin-left:35%;
text-align:center;
	width: 30%;
	background:#face69;
	color:black;
	padding: 5px 0;
	font-size: 18px;
	font-weight: 600;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
}
</style>
<script type="text/javascript">
<%@include file="/WEB-INF/js/attendance.js"%>
</script>
</head>
<body>
		<div class="form-attendance">
			<form:form name="form" action="addattendance" method="post"
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
					<form:input path="attendanceDate" type="date" id="attendanceDate" name="attendanceDate" onblur="attendanceDateCheck();"
							placeholder="Enter Attendance Date" required="true" />
				</div>

				<div class="form-control-attendance">
					<label for="inTime">In-Time : </label>
					<form:input path="inTime" type="time" id="intime" value="00:00" name="inTime" onblur="inTimeCheck();" placeholder="Enter In-Time"
							required="true" />
				</div>

				<div class="form-control-attendance">
					<label for="outTime">Out-Time : </label>
						<form:input path="outTime" type="time" id="outtime" value="00:00" name="outTime" onblur="outTimeCheck();" placeholder="Enter Out-Time"
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
							required="true" value='<%=session.getAttribute("employeeId")%>'/>
				</div>
<br><div>
					<form:button class="button" type="submit" name="submit">Add Attendance</form:button>
					</div>
			</form:form>
			<br>
		<button onclick="history.back()">Back</button>
			</div>	
			
</body>
</html>