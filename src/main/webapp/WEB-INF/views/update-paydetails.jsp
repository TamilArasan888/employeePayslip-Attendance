<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Payslip Details</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
<%@include file="/WEB-INF/CSS/forforms.css"%>
</style>
</head>
<body>
	<form:form action="updatepayslip" method="post"
		modelAttribute="updatepayslipdetails">
		<h1>Update Payslip Details</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee Id : </label></td>
						<td><form:input path="employeeID" /></td>
					</tr>
					<tr>
						<td><label for="payslipID">Payslip ID : </label></td>
						<td><form:input path="payslipID" /></td>
					</tr>
					<tr>
						<td><label for="payslipDate">Payslip Date : </label></td>
						<td><form:input path="payslipDate" /></td>
					</tr>
					<tr>
						<td><label for="grossSalary">Gross Salary : </label></td>
						<td><form:input path="grossSalary" /></td>
					</tr>
					<tr>
						<td><label for="netSalary">Net Salary : </label></td>
						<td><form:input path="netSalary" /></td>
					</tr>
				</tbody>
			</table>
			<br>
			<br>
			<form:button>Update Payslip</form:button>
		</div>
	</form:form>
</body>
</html>