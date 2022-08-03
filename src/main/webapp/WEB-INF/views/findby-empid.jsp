<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Employee ByID</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action ="" method = "post" modelAttribute = "getemployeebyid">
            <div>
                    <label for="employeeID">Employee ID : </label>
                    <div>
                        <form:input path="employeeID" readonly="true" />
                    </div>
                </div>
                <div>
                    <label for="employeeFirstName">Employee FirstName : </label>
                    <div>
                        <form:input path="employeeFirstName" readonly="true" />
                    </div>
                </div>
                <div>
                    <label for="employeeLastName">Employee LastName : </label>
                    <div>
                        <form:input path="employeeLastName" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeGender">Gender : </label>
                    <div>
                        <form:input path="employeeGender" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeDOB">Date Of Birth : </label>
                    <div>
                        <form:input path="employeeDOB" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeEmail">Email : </label>
                    <div>
                        <form:input path="employeeEmail" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeePassword">Password : </label>
                    <div>
                        <form:input path="employeePassword" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeePhoneNumber">Phone Number : </label>
                    <div>
                        <form:input path="employeePhoneNumber" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeAddress">Address : </label>
                    <div>
                        <form:input path="employeeAddress" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeJobID">Job ID : </label>
                    <div>
                        <form:input path="employeeJobID" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeRole">Designation : </label>
                    <div>
                        <form:input path="employeeRole" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeManager">Manager Name : </label>
                    <div>
                        <form:input path="employeeManager" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeHireDate">HireDate : </label>
                    <div>
                        <form:input path="employeeHireDate" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="employeeWorkingHours">WorkingHours : </label>
                    <div>
                        <form:input path="employeeWorkingHours" readonly="true"/>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>