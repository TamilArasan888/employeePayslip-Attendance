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
<a href="/attendancedetails/addattendancedetails"><button class="back-button"
       >Go Back</button></a>
	<div id="table root">
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
				<c:forEach var="attendance" items="${allattendancedetails}">
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