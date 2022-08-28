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
<a href="/admindetails/adminindex"><button class="back-button"
      >Go Back</button></a>
	<div>
		<table>
		<caption></caption>
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
							href="/admindetails/deleteadmindetailsbyid?adminid=${admin.adminID}" 
							onclick="if (confirm('Are you sure you want to Delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>