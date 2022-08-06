<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee Details</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="addemployee" method="post"
				modelAttribute="addemployeedetail">
				<h1>Employee Registration Form</h1>
				<table>
					<tr>
						<td><label for="employeeID">Employee ID : </label> <form:input
								path="employeeID" /></td>
					</tr>
					<tr>
						<td><label for="employeeFirstName">Employee FirstName
								: </label> <form:input path="employeeFirstName" /></td>
					</tr>
					<tr>
						<td><label for="employeeLastName">Employee LastName :
						</label> <form:input path="employeeLastName" /></td>
					</tr>
					<tr>
						<td><label for="employeeGender">Gender : </label> <form:radiobutton
								path="employeeGender" value="Male" /> Male <form:radiobutton
								path="employeeGender" value="Female" /> Female</td>
					</tr>
					<tr>
						<td><label for="employeeDOB">Date Of Birth : </label> <form:input
								type="date" path="employeeDOB" /></td>
					</tr>
					<tr>
						<td><label for="employeeEmail">Email : </label> <form:input
								path="employeeEmail" /></td>
					</tr>
					<tr>
						<td><label for="employeePassword">Password : </label> <form:input
								path="employeePassword" /></td>
					</tr>
					<tr>
						<td><label for="employeePhoneNumber">Phone Number : </label>
							<form:input path="employeePhoneNumber" /></td>
					</tr>
					<tr>
						<td><label for="employeeAddress">Address : </label> <form:input
								path="employeeAddress" /></td>
					</tr>
					<tr>
						<td><label for="employeeJobID">Job ID : </label> <form:input
								path="employeeJobID" /></td>
					</tr>
					<tr>
						<td><label for="employeeRole">Employee Role : </label> <form:select
								path="employeeRole">
								<c:forEach var="basicSalary" items="${basicSalary}">
									<form:option value="${basicSalary.employeeRole}"
										label="${basicSalary.employeeRole}" />
								</c:forEach>
							</form:select></td>
					</tr>
					<tr>
						<td><label for="employeeManager">Manager Name : </label> <form:input
								path="employeeManager" /></td>
					</tr>
					<tr>
						<td><label for="employeeHireDate">HireDate : </label> <form:input
								type="date" path="employeeHireDate" /></td>
					</tr>
					<tr>
						<td><label for="employeeWorkingHours">WorkingHours :
						</label> <form:input path="employeeWorkingHours" /></td>
					</tr>
					<tr>
						<td><form:button>Add Employee</form:button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>