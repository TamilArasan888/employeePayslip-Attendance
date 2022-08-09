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
</style>
</head>
<body>
    <div id="root" align="center">
        <div id="form">
            <form:form action ="updatepayslip" method = "post" modelAttribute = "updatepayslipdetails">
            <h1>Update Payslip Details</h1>
            <div>
                    <label for="payslipID">Payslip ID : </label>
                    <div>
                        <form:input path="payslipID" />
                    </div>
                </div>
                <form:errors path="payslipID" cssClass="text-danger" />
                <div>
                    <label for="payslipDate">Payslip Date : </label>
                    <div>
                        <form:input path="payslipDate" />
                    </div>
                </div>
                <form:errors path="payslipDate" cssClass="text-danger" />
                <div>
                    <label for="grossSalary">Gross Salary : </label>
                    <div>
                        <form:input path="grossSalary" />
                    </div>
                </div>
                <form:errors path="grossSalary" cssClass="text-danger" />
                <div>
                    <label for="netSalary">Net Salary : </label>
                    <div>
                        <form:input path="netSalary" />
                    </div>
                </div>
                <form:errors path="netSalary" cssClass="text-danger" />
                <div>
                    <label for="employeeID">Employee Id : </label>
                    <div>
                        <form:input path="employeeID" />
                    </div>
                </div>
                <form:errors path="employeeID" cssClass="text-danger" />
                <div>
                    <form:button>Update Payslip</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>