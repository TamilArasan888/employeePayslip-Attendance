<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Payslip Details</title>
<style type="text/css">
<%@include file="/WEB-INF/css/forforms.css"%>
</style>
<script type="text/javascript">
<%@include file="/WEB-INF/js/payslip.js"%>
</script>
</head>
<body>
	<form:form name="form" action="updatepayslip" method="post"
		modelAttribute="updatepayslipdetails">
		<h1>Update Payslip Details</h1>
		<div class="form">
			<table>
			<caption>Update Payslip</caption>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee Id : </label></td>
						<td><form:input path="employeeID" name="employeeID" onblur="employeeIDCheck();"/></td>
					</tr>
					<tr>
						<td><label for="payslipID">Payslip ID : </label></td>
						<td><form:input path="payslipID" /></td>
					</tr>
					<tr>
						<td><label for="payslipDate">Payslip Date : </label></td>
						<td><form:input path="payslipDate" name="payslipDate" onblur="payslipDateCheck();"/></td>
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