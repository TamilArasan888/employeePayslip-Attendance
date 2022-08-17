<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Payslip Details</title>
<style type="text/css">
	<%@include file="/WEB-INF/css/forms.css"%>
</style>
<script type="text/javascript">
<%@include file="/WEB-INF/js/payslip.js"%>
</script>
</head>
<body>
<div class="form-payslip">
	<form:form name="form" action="addpayslip" method="post"
		modelAttribute="addpayslipdetail">
		<h1>Add Payslip Form</h1>
		<%-- <div>
					<label for="payslipID">Payslip ID : </label>
					<form:input path="payslipID" placeholder="Enter Payslip ID" required="true"/>
				</div> --%>
				
		<div class="form-control-payslip">
				<label for="payslipDate">Payslip Date : </label>
				<form:input type="date" path="payslipDate" name="payslipDate" onblur="payslipDateCheck();"
					placeholder="Enter Payslip Date" required="true" />
			</div>

			<div class="form-control-payslip">
				<label for="employeeID">Employee Id : </label>
				<form:input path="employeeID" name="employeeID" onblur="employeeIDCheck();"
				placeholder="Enter Empolyee Id" required="true" />
			</div>
			<br>
			<br><div>
			<form:button class="button" type="submit" name="submit">Add Payslip</form:button></div>
	</form:form>
	</div>
</body>
</html>