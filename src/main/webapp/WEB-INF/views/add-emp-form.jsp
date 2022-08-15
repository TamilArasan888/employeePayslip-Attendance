<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee Details</title>
<style type="text/css">
<%@include file="/WEB-INF/CSS/forforms.css"%>
</style>
</head>
<body>
	<form:form action="addemployee" method="post"
		modelAttribute="addemployeedetail">

		<h1>Employee Registration Form</h1>

		<%-- <tr>
						<label for="employeeID">Employee ID : </label>
						<form:input path="employeeID" placeholder="Enter Your Employee Id" required="true"/>
					</tr>
					<form:errors path="employeeID" cssClass="text-danger" /> --%>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="employeeFirstName">Employee FirstName
								: </label></td>
						<td><form:input path="employeeFirstName"
								placeholder="Enter Your First Name" required="true" /></td>
					</tr>
					<form:errors path="employeeFirstName" cssClass="text-danger" />

					<tr>
						<td><label for="employeeLastName">Employee LastName :
						</label></td>
						<td><form:input path="employeeLastName"
								placeholder="Enter Your Last Name" required="true" /></td>
					</tr>
					<form:errors path="employeeLastName" cssClass="text-danger" />

					<tr>
						<td><label for="employeeGender">Gender : </label></td>
						<td class="radbtn"><form:radiobutton path="employeeGender"
								value="Male" /> Male <form:radiobutton 
								path="employeeGender" value="Female" /> Female</td>
					</tr>
					<form:errors path="employeeGender" cssClass="text-danger" />

					<tr>
						<td><label for="employeeDOB">Date Of Birth : </label></td>
						<td><form:input type="date" path="employeeDOB"
								required="true" /></td>
					</tr>

					<tr>
						<td><label for="employeeEmail">Email : </label></td>
						<td><form:input path="employeeEmail"
								placeholder="Enter Your Email ID" required="true" /></td>
					</tr>
					<form:errors path="employeeEmail" cssClass="text-danger" />

					<tr>
						<td><label for="employeePassword">Password : </label></td>
						<td><form:input type="password" path="employeePassword"
								placeholder="Enter Your Password" required="true" /></td>
					</tr>
					<form:errors path="employeePassword" cssClass="text-danger" />

					<tr>
						<td><label for="employeePhoneNumber">Phone Number : </label></td>
						<td><form:input path="employeePhoneNumber"
								placeholder="Enter Your Phone Number" required="true" /></td>
					</tr>
					<form:errors path="employeePhoneNumber" cssClass="text-danger" />

					<tr>
						<td><label for="employeeAddress">Address : </label></td>
						<td><form:input path="employeeAddress"
								placeholder="Enter Your Address" /></td>
					</tr>
					<form:errors path="employeeAddress" cssClass="text-danger" />

					<%-- <tr>
					<label for="employeeJobID">Job ID : </label>
					<form:input path="employeeJobID" placeholder="Enter Your Job Id" required="true"/>
				</tr>
				<form:errors path="employeeJobID" cssClass="text-danger" /> --%>

					<tr>
						<td><label for="employeeRole">Employee Role : </label></td>
						<td><form:select path="employeeRole">
								<c:forEach var="basicSalary" items="${basicSalary}">
									<form:option value="${basicSalary.employeeRole}"
										label="${basicSalary.employeeRole}" />
								</c:forEach>
							</form:select></td>
					</tr>

					<tr>
						<td><label for="employeeManager">Manager Name : </label>
						<td><form:input path="employeeManager"
								placeholder="Enter Your Manager Name" /></td>
					</tr>
					<form:errors path="employeeManager" cssClass="text-danger" />

					<tr>
						<td><label for="employeeHireDate">HireDate : </label></td>
						<td><form:input type="date" path="employeeHireDate"
								placeholder="Enter Your HireDate" /></td>
					</tr>

					<tr>
						<td><label for="employeeWorkingHours">WorkingHours :
						</label></td>
						<td><form:input path="employeeWorkingHours"
								placeholder="Enter Your Working Hours" /></td>
					</tr>
					<form:errors path="employeeWorkingHours" cssClass="text-danger" />
				</tbody>
			</table>
			<br>
			<br>
			<form:button type="submit" name="submit">Add Employee</form:button>

		</div>
	</form:form>

</body>
</html>