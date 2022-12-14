<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payslip List</title>
</head>
<body>
    <div id="table root">
        <table>
        <caption></caption>
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
            <c:forEach var="payslip" items="${allpayslipdetails}">
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