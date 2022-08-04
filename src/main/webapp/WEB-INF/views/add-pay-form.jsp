<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Payslip Details</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action ="addpayslip" method = "post" modelAttribute = "addpayslipdetail">
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
                    <label for="employeeID">Employee Id : </label>
                    <div>
                        <form:input path="employeeID" />
                    </div>
                </div>
                <div>
                    <form:button>Add Payslip</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>