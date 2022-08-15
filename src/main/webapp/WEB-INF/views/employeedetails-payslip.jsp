<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details & Payslip</title>
<style>
<%@include file="/WEB-INF/CSS/for-formsandtables.css"%>
</style>
</head>
<body>
	<form:form action="" method="post" modelAttribute="getemployeedetails">
		<h1>Employee details with his payslip list</h1>
		<div class="form">
			<table>
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
						<td><label for="employeeEmail">Email : </label></td>
						<td><form:input path="employeeEmail" readonly="true" /></td>
					</tr>

					<tr>
						<td><label for="employeeJobID">Job ID : </label></td>
						<td><form:input path="employeeJobID" readonly="true" /></td>
					</tr>

					<tr>
						<td><label for="employeeRole">Employee Role : </label></td>
						<td><form:input path="employeeRole" readonly="true" /></td>
					</tr>

					<tr>
						<td><label for="employeeManager">Manager Name : </label></td>
						<td><form:input path="employeeManager" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>

	<div>
		<h1>Payslip list</h1>
	</div>
	<div class="list">
		<table>
			<thead>
				<tr>
					<th>Payslip Id</th>
					<th>Payslip Date</th>
					<th>Gross Salary</th>
					<th>Net Salary</th>
					<th>Employee Id</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="payslip" items="${payslipdetails}">
					<tr>
						<td>${payslip.payslipID}</td>
						<td>${payslip.payslipDate}</td>
						<td>${payslip.grossSalary}</td>
						<td>${payslip.netSalary}</td>
						<td>${payslip.employeeID}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>