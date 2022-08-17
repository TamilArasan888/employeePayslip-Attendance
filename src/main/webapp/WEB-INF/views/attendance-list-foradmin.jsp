<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Attendance List</title>
<style type="text/css">
	<%@include file="/WEB-INF/css/fortables.css"%>
</style>
</head>
<body>
	<div>
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Employee ID</th>
					<th>Attendance Id</th>
					<th>Attendance Date</th>
					<th>In-Time</th>
					<th>Out-Time</th>
					<th>Daily Task Description</th>
					<th>View Details</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="attendance" items="${allattendancedetails}">
					<tr>
						<td>${attendance.employeeID}</td>
						<td>${attendance.attendanceID}</td>
						<td>${attendance.attendanceDate}</td>
						<td>${attendance.inTime}</td>
						<td>${attendance.outTime}</td>
						<td>${attendance.dailyTask}</td>
						<td><a 
							href="/attendancedetails/findattendancebyid?attendanceid=${attendance.attendanceID}">View</a>
						<td><a
							href="/attendancedetails/updateattendancedetails?attendanceid=${attendance.attendanceID}">Edit</a></td>
						<td><a
							href="/attendancedetails/deleteattendancebyid?attendanceid=${attendance.attendanceID}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>