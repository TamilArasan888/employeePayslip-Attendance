<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Payslip Details</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action ="updatepayslip" method = "post" modelAttribute = "updatepayslipdetails">
            <div>
                    <label for="payslipID">Payslip ID : </label>
                    <div>
                        <form:input path="payslipID" />
                    </div>
                </div>
                <div>
                    <label for="payslipDate">Payslip Date : </label>
                    <div>
                        <form:input path="payslipDate" />
                    </div>
                </div>
                <div>
                    <label for="homeRentAllowance">HRA : </label>
                    <div>
                        <form:input path="homeRentAllowance" />
                    </div>
                </div>
                <div>
                    <label for="grossSalary">Gross Salary : </label>
                    <div>
                        <form:input path="grossSalary" />
                    </div>
                </div>
                <div>
                    <label for="providentFund">PF : </label>
                    <div>
                        <form:input path="providentFund" />
                    </div>
                </div>
                <div>
                    <label for="dailyAllowance">DA : </label>
                    <div>
                        <form:input path="dailyAllowance" />
                    </div>
                </div>
                <div>
                    <label for="incomeTax">Income Tax : </label>
                    <div>
                        <form:input path="incomeTax" />
                    </div>
                </div>
                <div>
                    <label for="netSalary">Net Salary : </label>
                    <div>
                        <form:input path="netSalary" />
                    </div>
                </div>
                <div>
                    <label for="employeeID">Employee Id : </label>
                    <div>
                        <form:input path="employeeID" />
                    </div>
                </div>
                <div>
                    <form:button>Update Payslip</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>