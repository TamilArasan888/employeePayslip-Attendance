<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Payslip Details</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root" align="center">
		<div id="form">
			<form:form action="addpayslip" method="post"
				modelAttribute="addpayslipdetail">
				<h1>Add Payslip Form</h1>
				<div>
					<label for="payslipID">Payslip ID : </label>
					<form:input path="payslipID" placeholder="Enter Payslip ID" required="true"/>
				</div>
				<form:errors path="payslipID" cssClass="text-danger" />
				
				<div>
					<label for="payslipDate">Payslip Date : </label>
					<form:input type="date" path="payslipDate" placeholder="Enter Payslip Date" required="true"/>
				</div>
				<form:errors path="payslipDate" cssClass="text-danger" />
				
				<div>
					<label for="employeeID">Employee Id : </label>
					<form:input path="employeeID" />
				</div>
				<form:errors path="employeeID" cssClass="text-danger" placeholder="Enter Your Employee ID" required="true"/>
				
				<div>
					<form:button>Add Payslip</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>