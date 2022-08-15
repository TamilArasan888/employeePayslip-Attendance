<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Payslip Details</title>
<style type="text/css">
<%@include file="/WEB-INF/CSS/forms.css"%>
</style>
</head>
<body>
<div class="form-payslip">
	<form:form action="addpayslip" method="post"
		modelAttribute="addpayslipdetail">
		<h1>Add Payslip Form</h1>
		<%-- <div>
					<label for="payslipID">Payslip ID : </label>
					<form:input path="payslipID" placeholder="Enter Payslip ID" required="true"/>
				</div> --%>
				
		<div class="form-control-payslip">
				<label for="payslipDate">Payslip Date : </label>
				<form:input type="date" path="payslipDate"
					placeholder="Enter Payslip Date" required="true" />
			</div>

			<div class="form-control-payslip">
				<label for="employeeID">Employee Id : </label>
				<form:input path="employeeID" />
			</div>
			<br>
			<br><div>
			<form:button class="button" type="submit" name="submit">Add Payslip</form:button></div>
	</form:form>
	</div>
</body>
</html>