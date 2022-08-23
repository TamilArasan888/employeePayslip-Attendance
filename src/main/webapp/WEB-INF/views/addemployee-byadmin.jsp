<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Employee By Admin</title>
<style type="text/css">
<%@include file="/WEB-INF/css/forms.css"%>
</style>
<script>
<%@include file="/WEB-INF/js/employee.js"%>
</script>
</head>
<body>
	<div class="form-employee">
		<form:form name="form" action="addemployeebyadmin" method="post"
			modelAttribute="addemployeedetailbyadmin">

			<h1>Employee Registration Form</h1>

			<%-- <div>
						<label for="employeeID">Employee ID : </label>
						<form:input path="employeeID" placeholder="Enter Your Employee Id" required="true"/>
					</div>
					<form:errors path="employeeID" cssClass="text-danger" /> --%>
			<div class="form-control-employee">
				<label for="employeeFirstName">Employee FirstName : </label>
				<form:input path="employeeFirstName" name="employeeFirstName" onblur="employeeFirstNameCheck();"
					placeholder="Enter Your First Name" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeLastName">Employee LastName : </label>
				<form:input path="employeeLastName" name="employeeLastName" onblur="employeeLastNameCheck();"
					placeholder="Enter Your Last Name" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeGender">Gender : </label>
				<form:radiobutton path="employeeGender" required="true" name="employeeGender" onblur="genderCheck();"
						value="Male" /> Male <form:radiobutton path="employeeGender"
						value="Female" /> Female
			</div>

			<div class="form-control-employee">
				<label for="employeeDOB">Date Of Birth : </label>
				<form:input type="date" path="employeeDOB" name="employeeDOB" onblur="dobCheck();" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeEmail">Email : </label>
				<form:input path="employeeEmail" name="employeeEmail" onblur="emailCheck();" placeholder="Enter Your Email ID"
					required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeePassword">Password : </label>
				<form:input type="password" path="employeePassword" name="employeePassword" onblur="passwordCheck();"
					placeholder="Enter Your Password" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeePhoneNumber">Phone Number : </label>
				<form:input path="employeePhoneNumber" name="employeePhoneNumber" onblur="phoneNumberCheck();"
					placeholder="Enter Your Phone Number" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeAddress">Address : </label>
				<form:input path="employeeAddress" name="employeeAddress" onblur="addressCheck();" placeholder="Enter Your Address" required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeJobID">Job ID : </label>
				<form:input path="employeeJobID" name="employeeJobID" onblur="jobIDCheck();" placeholder="Enter Your Job Id"
					required="true" />
			</div>

			<div class="form-control-employee">
				<label for="employeeRole">Employee Role : </label>
				<form:select path="employeeRole" name="employeeRole" onblur="employeeRoleCheck();" required="true">
					<c:forEach var="basicSalary" items="${basicSalary}">
						<form:option value="${basicSalary.employeeRole}"
							label="${basicSalary.employeeRole}" />
					</c:forEach>
				</form:select>
			</div>

			<div class="form-control-employee">
				<label for="employeeManager">Manager Name : </label>
				<form:input path="employeeManager" name="employeeManager" onblur="managerCheck();"
					placeholder="Enter Your Manager Name" required="true"/>
			</div>

			<div class="form-control-employee">
				<label for="employeeHireDate">HireDate : </label>
				<form:input type="date" path="employeeHireDate" name="employeeHireDate" onblur="hireDateCheck();"
					placeholder="Enter Your HireDate" required="true"/>
			</div>

			<div class="form-control-employee">
				<label for="employeeWorkingHours">WorkingHours : </label>
				<form:input path="employeeWorkingHours" name="employeeWorkingHours" onblur="workingHoursCheck();"
					placeholder="Enter Your Working Hours" required="true"/>
			</div>
			<br>
			<div>
				<form:button class="button" type="submit" name="submit">Add Employee</form:button>
				
			</div>
	</form:form>
	<a href="/admindetails/adminindex"><button class="back-button2" >Go Back</button></a>
	</div>

</body>
</html>