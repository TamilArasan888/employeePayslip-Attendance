<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance List</title>
</head>
<body>
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
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="attendance" items="${allattendancedetails}">
					<tr>
						<td>${attendance.attendanceID}</td>
						<td>${attendance.attendanceDate}</td>
						<td>${attendance.inTime}</td>
						<td>${attendance.outTime}</td>
						<td>${attendance.dailyTask}</td>
						<td>${attendance.employeeID}</td>
						<td><a
							href="/attendancedetails/updateattendancedetails?attendanceid=${attendance.attendanceID}">Update</a></td>
						<td><a
							href="/attendancedetails/deleteattendancebyid?attendanceid=${attendance.attendanceID}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>