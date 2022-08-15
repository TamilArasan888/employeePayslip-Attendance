<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Payslip Details</title>
<style type="text/css">
<%@include file="/WEB-INF/CSS/forforms.css"%>
</style>
</head>
<body>
	
			<form:form action="addpayslip" method="post"
				modelAttribute="addpayslipdetail">
				<h1>Add Payslip Form</h1>
				<%-- <tr>
					<label for="payslipID">Payslip ID : </label>
					<form:input path="payslipID" placeholder="Enter Payslip ID" required="true"/>
				</tr>
				<form:errors path="payslipID" cssClass="text-danger" /> --%>
					<div class="form">
					<table>
					<tbody>
					<tr>
					<td><label for="payslipDate">Payslip Date : </label></td>
					<td><form:input type="date" path="payslipDate" placeholder="Enter Payslip Date" required="true"/></td>
				</tr>
				<form:errors path="payslipDate" cssClass="text-danger" />
				
				<tr>
					<td><label for="employeeID">Employee Id : </label></td>
					<td><form:input path="employeeID" /></td>
				</tr>
				<form:errors path="employeeID" cssClass="text-danger" placeholder="Enter Your Employee ID" required="true"/>
					
					</tbody></table>
				<br><br>
					<form:button type="submit" name="submit">Add Payslip</form:button>
					</div>
			</form:form>
</body>
</html>