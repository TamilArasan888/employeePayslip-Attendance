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
<%@include file="/WEB-INF/CSS/forms.css"%>
</style>
</head>
<body>
	<div class="form-employee">
		<form:form action="addemployee" method="post"
			modelAttribute="addemployeedetail">

			<h1>Employee Registration Form</h1>

			<%-- <div>
						<label for="employeeID">Employee ID : </label>
						<form:input path="employeeID" placeholder="Enter Your Employee Id" required="true"/>
					</div>
					<form:errors path="employeeID" cssClass="text-danger" /> --%>
			<div class="form-control-employee">
				<label for="employeeFirstName">Employee FirstName : </label>
				<form:input path="employeeFirstName"
					placeholder="Enter Your First Name" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeLastName">Employee LastName : </label>
				<form:input path="employeeLastName"
					placeholder="Enter Your Last Name" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeGender">Gender : </label>
				<form:radiobutton path="employeeGender"
						value="Male" /> Male <form:radiobutton path="employeeGender"
						value="Female" /> Female
			</div>

			<div class="form-control-employee">
				<label for="employeeDOB">Date Of Birth : </label>
				<form:input type="date" path="employeeDOB" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeEmail">Email : </label>
				<form:input path="employeeEmail" placeholder="Enter Your Email ID"
					required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeePassword">Password : </label>
				<form:input type="password" path="employeePassword"
					placeholder="Enter Your Password" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeePhoneNumber">Phone Number : </label>
				<form:input path="employeePhoneNumber"
					placeholder="Enter Your Phone Number" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeAddress">Address : </label>
				<form:input path="employeeAddress" placeholder="Enter Your Address" />
			</div>

			<div class="form-control-employee">
				<label for="employeeJobID">Job ID : </label>
				<form:input path="employeeJobID" placeholder="Enter Your Job Id"
					required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeRole">Employee Role : </label>
				<form:select path="employeeRole">
					<c:forEach var="basicSalary" items="${basicSalary}">
						<form:option value="${basicSalary.employeeRole}"
							label="${basicSalary.employeeRole}" />
					</c:forEach>
				</form:select>
			</div>

			<div class="form-control-employee">
				<label for="employeeManager">Manager Name : </label>
				<form:input path="employeeManager"
					placeholder="Enter Your Manager Name" />
			</div>

			<div class="form-control-employee">
				<label for="employeeHireDate">HireDate : </label>
				<form:input type="date" path="employeeHireDate"
					placeholder="Enter Your HireDate" />
			</div>

			<div class="form-control-employee">
				<label for="employeeWorkingHours">WorkingHours : </label>
				<form:input path="employeeWorkingHours"
					placeholder="Enter Your Working Hours" />
			</div>
			<br>
			<div>
				<form:button class="button" type="submit" name="submit">Add Employee</form:button>
			</div>
	</form:form>
	</div>
</body>
</html>