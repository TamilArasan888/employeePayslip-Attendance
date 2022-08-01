<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
</head>
<body>
    <div id="table root">
        <table>
            <thead>
            <tr>
            <th>Admin Id</th>
            <th>Admin Name</th>
            <th>Admin Password</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="admin" items="${getalladmindetails}">
            <tr>
            <td>${admin.adminID}</td>
            <td>${admin.adminName}</td>
            <td>${admin.adminPassword}</td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>