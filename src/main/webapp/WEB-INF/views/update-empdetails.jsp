<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee Details</title>
<style>
<%@include file="/WEB-INF/CSS/forforms.css"%>
</style>
</head>
<body>
	<form:form action="updateemployee" method="post"
		modelAttribute="updateemployeedetails">
		<h1>Update Employee details</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee ID : </label></td>
						<td><form:input path="employeeID" /></td>
					</tr>
					<tr>
						<td><label for="employeeFirstName">Employee FirstName
								: </label></td>
						<td><form:input path="employeeFirstName" /></td>
					</tr>
					<tr>
						<td><label for="employeeLastName">Employee LastName :
						</label></td>
						<td><form:input path="employeeLastName" /></td>
					</tr>
					<tr>
						<td><label for="employeeGender">Gender : </label></td>
						<td class="radbtn"><form:radiobutton path="employeeGender" value="Male" />
							Male <form:radiobutton path="employeeGender" value="Female" />
						Female</td>
					</tr>
					<tr>
						<td><label for="employeeDOB">Date Of Birth : </label></td>
						<td><form:input type="date" path="employeeDOB" /></td>
					</tr>
					<tr>
						<td><label for="employeeEmail">Email : </label></td>
						<td><form:input path="employeeEmail" /></td>
					</tr>
					<tr>
						<td><label for="employeePassword">Password : </label></td>
						<td><form:input path="employeePassword" /></td>
					</tr>
					<tr>
						<td><label for="employeePhoneNumber">Phone Number : </label></td>
						<td>
					<form:input path="employeePhoneNumber" />
						</td>
						</tr>
					<tr>
						<td><label for="employeeAddress">Address : </label></td>
						<td>
					<form:input path="employeeAddress" />
						</td>
						</tr>
					<tr>
						<td><label for="employeeJobID">Job ID : </label></td>
						<td>
					<form:input path="employeeJobID" />
						</td>
						</tr>
					<tr>
						<td><label for="employeeRole">Employee Role : </label></td>
						<td>
					<form:select path="employeeRole">
							<c:forEach var="basicSalary" items="${basicSalary}">
								<form:option value="${basicSalary.employeeRole}"
									label="${basicSalary.employeeRole}" />
							</c:forEach>
						</form:select>
						</td>
						</tr>
					<tr>
						<td><label for="employeeManager">Manager Name : </label></td>
						<td>
					<form:input path="employeeManager" />
						</td>
						</tr>
					<tr>
						<td><label for="employeeHireDate">HireDate : </label></td>
						<td>
					<form:input type="date" path="employeeHireDate" />
						</td>
						</tr>
					<tr>
						<td><label for="employeeWorkingHours">WorkingHours :
						</label></td>
						<td>
					<form:input path="employeeWorkingHours" />
						</td>
						</tr>
				</tbody>
			</table>
				<form:button>Update Employee</form:button>
				</div>
	</form:form>
</body>
</html>