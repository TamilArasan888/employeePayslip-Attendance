<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Employee Details</title>
<style>
	<%@include file="/WEB-INF/css/forforms.css"%>
</style>
<script>
	<%@include file="/WEB-INF/js/employee.js"%>
</script>
</head>
<body>
	<form:form name="form" action="updateemployee" method="post"
		modelAttribute="updateemployeedetails">
		<h1>Update Employee details</h1>
		<div class="form">
			<table>
			<caption></caption>
			<tr><th></th></tr>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee ID : </label></td>
						<td><form:input path="employeeID" /></td>
					</tr>
					<tr>
						<td><label for="employeeFirstName">Employee FirstName
								: </label></td>
						<td><form:input path="employeeFirstName" name="employeeFirstName" onblur="employeeFirstNameCheck();" required="true"/></td>
					</tr>
					<tr>
						<td><label for="employeeLastName">Employee LastName :
						</label></td>
						<td><form:input path="employeeLastName" name="employeeLastName" onblur="employeeLastNameCheck();" required="true"/></td>
					</tr>
					<tr>
						<td><label for="employeeGender">Gender : </label></td>
						<td id="radbtn"><form:radiobutton path="employeeGender" name="employeeGender" onblur="genderCheck();" required="true" value="Male" />
							Male <form:radiobutton path="employeeGender" value="Female" />
						Female</td>
					</tr>
					<tr>
						<td><label for="employeeDOB">Date Of Birth : </label></td>
						<td><form:input type="date" path="employeeDOB" name="employeeDOB" onblur="dobCheck();" required="true"/></td>
					</tr>
					<tr>
						<td><label for="employeeEmail">Email : </label></td>
						<td><form:input path="employeeEmail" name="employeeEmail" onblur="emailCheck();" required="true"/></td>
					</tr>
					<tr>
						<td><label for="employeePassword">Password : </label></td>
						<td><form:input path="employeePassword" name="employeePassword" onblur="passwordCheck();" required="true"/></td>
					</tr>
					<tr>
						<td><label for="employeePhoneNumber">Phone Number : </label></td>
						<td>
					<form:input path="employeePhoneNumber" name="employeePhoneNumber" onblur="phoneNumberCheck();" required="true"/>
						</td>
						</tr>
					<tr>
						<td><label for="employeeAddress">Address : </label></td>
						<td>
					<form:input path="employeeAddress" name="employeeAddress" onblur="addressCheck();" required="true"/>
						</td>
						</tr>
					<tr>
						<td><label for="employeeJobID">Job ID : </label></td>
						<td>
					<form:input path="employeeJobID" name="employeeJobID" onblur="jobIDCheck();" required="true"/>
						</td>
						</tr>
					<tr>
						<td><label for="employeeRole">Employee Role : </label></td>
						<td>
					<form:select path="employeeRole" name="employeeRole" onblur="employeeRoleCheck();" required="true">
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
					<form:input path="employeeManager" name="employeeManager" onblur="managerCheck();" required="true"/>
						</td>
						</tr>
					<tr>
						<td><label for="employeeHireDate">HireDate : </label></td>
						<td>
					<form:input type="date" path="employeeHireDate" name="employeeHireDate" onblur="hireDateCheck();" required="true"/>
						</td>
						</tr>
					<tr>
						<td><label for="employeeWorkingHours">WorkingHours :
						</label></td>
						<td>
					<form:input path="employeeWorkingHours" name="employeeWorkingHours" onblur="workingHoursCheck();" required="true"/>
						</td>
						</tr>
				</tbody>
			</table>
				<form:button>Update Employee</form:button>
				</div>
	</form:form>
</body>
</html>