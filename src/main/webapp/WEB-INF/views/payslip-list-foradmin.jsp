<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payslip List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Employee Id</th>
					<th>Payslip Id</th>
					<th>Payslip Date</th>
					<th>Gross Salary</th>
					<th>Net Salary</th>
					<th>View Details</th>
					<th>Edit</th>
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
							href="/payslipdetails/updatepayslipdetails?payslipid=${payslip.payslipID}">Edit</a></td>
						<td><a
							href="/payslipdetails/deletepayslipbyid?payslipid=${payslip.payslipID}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>