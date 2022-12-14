<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Employees List</title>
</head>
<body>
    <div id="table root">
        <table>
        <caption></caption>
            <thead>
            <tr>
            <th>Employee Id</th>
            <th>Employee FirstName</th>
            <th>Employee LastName</th>
            <th>Gender</th>
            <th>Date Of Birth</th>
            <th>Email</th>
            <th>Password</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Job Id</th>
            <th>Designation</th>
            <th>Manager Name</th>
            <th>Hire Date</th>
            <th>Working Hours</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="employee" items="${allemployeedetails}">
            <tr>
            <td>${employee.employeeID}</td>
            <td>${employee.employeeFirstName}</td>
            <td>${employee.employeeLastName}</td>
            <td>${employee.employeeGender}</td>
            <td>${employee.employeeDOB}</td>
            <td>${employee.employeeEmail}</td>
            <td>${employee.employeePassword}</td>
            <td>${employee.employeePhoneNumber}</td>
            <td>${employee.employeeAddress}</td>
            <td>${employee.employeeJobID}</td>
            <td>${employee.employeeRole}</td>
            <td>${employee.employeeManager}</td>
            <td>${employee.employeeHireDate}</td>
            <td>${employee.employeeWorkingHours}</td>
			</tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>