<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Attendance Details</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action ="addattendance" method = "post" modelAttribute = "addattendancedetail">
            <div>
                    <label for="attendanceID">Attendance ID : </label>
                    <div>
                        <form:input path="attendanceID" />
                    </div>
                </div>
                <div>
                    <label for="attendanceDate">Attendance Date : </label>
                    <div>
                        <form:input type="date"  path="attendanceDate" />
                    </div>
                </div>
                <div>
                    <label for="inTime">In-Time : </label>
                    <div>
                        <form:input path="inTime" />
                    </div>
                </div>
                <div>
                    <label for="outTime">Out-Time : </label>
                    <div>
                        <form:input path="outTime" />
                    </div>
                </div>
                <div>
                    <label for="dailyTask">Daily Task Description : </label>
                    <div>
                        <form:input path="dailyTask" />
                    </div>
                </div>
                <div>
                    <label for="employeeID">Employee Id : </label>
                    <div>
                        <form:input path="employeeID" />
                    </div>
                </div>
                <div>
                    <form:button>Add Attendance</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>