<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Employee ByID</title>
<style>
<%@include file="/WEB-INF/css/forforms.css"%>
</style>
</head>
<body>
	<form:form action="" method="post" modelAttribute="getemployeebyid">
		<h1>Employee Details</h1>
		<div class="form">
			<table>
			<caption></caption>
			<tr><th></th></tr>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee ID : </label></td>
						<td><form:input path="employeeID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeFirstName">Employee FirstName
								: </label></td>
						<td><form:input path="employeeFirstName" readonly="true" />
						</td>
					</tr>
					<tr>
						<td><label for="employeeLastName">Employee LastName :
						</label></td>
						<td><form:input path="employeeLastName" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeGender">Gender : </label></td>
						<td><form:input path="employeeGender" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeDOB">Date Of Birth : </label></td>
						<td><form:input path="employeeDOB" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeEmail">Email : </label></td>
						<td><form:input path="employeeEmail" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeePassword">Password : </label></td>
						<td><form:input path="employeePassword" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeePhoneNumber">Phone Number : </label></td>
						<td><form:input path="employeePhoneNumber" readonly="true" />
						</td>
					</tr>
					<tr>
						<td><label for="employeeAddress">Address : </label></td>
						<td><form:input path="employeeAddress" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeJobID">Job ID : </label></td>
						<td><form:input path="employeeJobID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeRole">Designation : </label></td>
						<td><form:input path="employeeRole" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeManager">Manager Name : </label></td>
						<td><form:input path="employeeManager" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeHireDate">HireDate : </label></td>
						<td><form:input path="employeeHireDate" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeWorkingHours">WorkingHours :
						</label></td>
						<td><form:input path="employeeWorkingHours" readonly="true" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
</html>