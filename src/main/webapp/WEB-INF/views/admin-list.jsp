<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
<style type="text/css">
	<%@include file="/WEB-INF/css/fortables.css"%>
</style>
</head>
<body>
	<div>
		<table>
			<thead>
				<tr>
					<th>Admin Id</th>
					<th>Admin Name</th>
					<th>Admin Password</th>
					<th>View</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${getalladmindetails}">
					<tr>
						<td>${admin.adminID}</td>
						<td>${admin.adminName}</td>
						<td>${admin.adminPassword}</td>
						<td><a 
							href="/admindetails/getadmindetailsbyid?adminid=${admin.adminID}">View</a></td>
						<td><a
							href="/admindetails/updateadmindetails?adminid=${admin.adminID}">Edit</a></td>
						<td><a
							href="/admindetails/deleteadmindetailsbyid?adminid=${admin.adminID}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>