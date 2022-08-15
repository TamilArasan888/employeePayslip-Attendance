<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Payslip Details</title>
<style>
<%@include file="/WEB-INF/CSS/forforms.css"%>
</style>
</head>
<body>
	<form:form action="" method="post" modelAttribute="getpayslip">
		<h1>Payslip Details</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee Id : </label></td>
						<td><form:input path="employeeID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="payslipID">Payslip ID : </label></td>
						<td><form:input path="payslipID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="payslipDate">Payslip Date : </label></td>
						<td><form:input path="payslipDate" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="grossSalary">Gross Salary : </label></td>
						<td><form:input path="grossSalary" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="netSalary">Net Salary : </label></td>
						<td><form:input path="netSalary" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
</html>