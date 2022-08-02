<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee Details</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action ="updateemployee" method = "post" modelAttribute = "updateemployeedetails">
            <div>
                    <label for="employeeID">Employee ID : </label>
                    <div>
                        <form:input path="employeeID" />
                    </div>
                </div>
                <div>
                    <label for="employeeFirstName">Employee FirstName : </label>
                    <div>
                        <form:input path="employeeFirstName" />
                    </div>
                </div>
                <div>
                    <label for="employeeLastName">Employee LastName : </label>
                    <div>
                        <form:input path="employeeLastName" />
                    </div>
                </div>
                <div>
                    <label for="employeeGender">Gender : </label>
                    <div>
                        <form:input path="employeeGender" />
                    </div>
                </div>
                <div>
                    <label for="employeeDOB">Date Of Birth : </label>
                    <div>
                        <form:input path="employeeDOB" />
                    </div>
                </div>
                <div>
                    <label for="employeeEmail">Email : </label>
                    <div>
                        <form:input path="employeeEmail" />
                    </div>
                </div>
                <div>
                    <label for="employeePassword">Password : </label>
                    <div>
                        <form:input path="employeePassword" />
                    </div>
                </div>
                <div>
                    <label for="employeePhoneNumber">Phone Number : </label>
                    <div>
                        <form:input path="employeePhoneNumber" />
                    </div>
                </div>
                <div>
                    <label for="employeeAddress">Address : </label>
                    <div>
                        <form:input path="employeeAddress" />
                    </div>
                </div>
                <div>
                    <label for="employeeJobID">Job ID : </label>
                    <div>
                        <form:input path="employeeJobID" />
                    </div>
                </div>
                <div>
                    <label for="employeeRole">Designation : </label>
                    <div>
                        <form:input path="employeeRole" />
                    </div>
                </div>
                <div>
                    <label for="employeeManager">Manager Name : </label>
                    <div>
                        <form:input path="employeeManager" />
                    </div>
                </div>
                <div>
                    <label for="employeeHireDate">HireDate : </label>
                    <div>
                        <form:input path="employeeHireDate" />
                    </div>
                </div>
                <div>
                    <label for="employeeWorkingHours">WorkingHours : </label>
                    <div>
                        <form:input path="employeeWorkingHours" />
                    </div>
                </div>
                <div>
                    <form:button>Update Employee Details</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>