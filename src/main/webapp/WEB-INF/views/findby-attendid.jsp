<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Attendance ById</title>
</head>
<body>
    <div id="root" align="center">
        <div id="form">
            <form:form action ="" method = "post" modelAttribute = "getattendance">
            <h1>Get Attendance Details</h1>
            <div>
                    <label for="attendanceID">Attendance ID : </label>
                    <div>
                        <form:input path="attendanceID" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="attendanceDate">Attendance Date : </label>
                    <div>
                        <form:input path="attendanceDate" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="inTime">In-Time : </label>
                    <div>
                        <form:input path="inTime" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="outTime">Out-Time : </label>
                    <div>
                        <form:input path="outTime" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="dailyTask">Daily Task Description : </label>
                    <div>
                        <form:input path="dailyTask" readonly="true"/>
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