<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Attendance Details</title>
<style type="text/css">
body{
	background-image:
		url(https://media.istockphoto.com/photos/blue-wall-texture-picture-id175400834?b=1&k=20&m=175400834&s=170667a&w=0&h=R1InA1GKCO1_SsGdtipJgHxvE033OwaTSE7EN-O_Zjw=);
	background-repeat: no-repeat;
	background-size: 1366px 768px;
}
</style>
</head>
<body>
	<div id="root" align="center">
		<div id="form">
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

				<div>
					<label for="attendanceDate">Attendance Date : </label>
					<div>
						<form:input type="date" path="attendanceDate"
							placeholder="Enter Attendance Date" required="true" />
					</div>
				</div>

				<div>
					<label for="inTime">In-Time : </label>
					<div>
						<form:input path="inTime" placeholder="Enter In-Time"
							required="true" />
					</div>
				</div>

				<div>
					<label for="outTime">Out-Time : </label>
					<div>
						<form:input path="outTime" placeholder="Enter Out-Time"
							required="true" />
					</div>
				</div>

				<div>
					<label for="dailyTask">Daily Task Description : </label>
					<div>
						<form:input path="dailyTask" placeholder="Enter Daily Task"
							required="true" />
					</div>
				</div>

				<div>
					<label for="employeeID">Employee Id : </label>
					<div>
						<form:input path="employeeID" placeholder="Enter Employee ID"
							required="true" />
					</div>
				</div>

				<div>
					<form:button>Add Attendance</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>