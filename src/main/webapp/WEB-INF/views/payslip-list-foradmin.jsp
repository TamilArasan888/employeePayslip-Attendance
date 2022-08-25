<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payslip List</title>
<style>
<%@include file="/WEB-INF/css/fortables.css"%>
</style>
</head>
<body>
<a href="/admindetails/adminindex"><button class="back-button"
      >Go Back</button></a>
	<div id="table root">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Employee Id</th>
					<th>Payslip Id</th>
					<th>Payslip Date</th>
					<th>Gross Salary</th>
					<th>Net Salary</th>
					<th>View Details</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="payslip" items="${allpayslipdetails}">
					<tr>
						<td>${payslip.employeeID}</td>
						<td>${payslip.payslipID}</td>
						<td>${payslip.payslipDate}</td>
						<td>${payslip.grossSalary}</td>
						<td>${payslip.netSalary}</td>
						<td><a
							href="/employeedetails/getemployeepaysliplist?id=${payslip.employeeID}">View</a></td>
						<td><a
							href="/payslipdetails/deletepayslipbyid?payslipid=${payslip.payslipID}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>