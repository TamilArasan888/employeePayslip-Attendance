<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Payslip Details</title>
</head>
<body>
    <div id="root" align="center">
        <div id="form">
            <form:form action ="" method = "post" modelAttribute = "getpayslip">
            <h1>Get Payslip Details</h1>
            <div>
                    <label for="payslipID">Payslip ID : </label>
                    <div>
                        <form:input path="payslipID" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="payslipDate">Payslip Date : </label>
                    <div>
                        <form:input path="payslipDate" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="grossSalary">Gross Salary : </label>
                    <div>
                        <form:input path="grossSalary" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="netSalary">Net Salary : </label>
                    <div>
                        <form:input path="netSalary" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeID">Employee Id : </label>
                    <div>
                        <form:input path="employeeID" readonly="true"/>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>