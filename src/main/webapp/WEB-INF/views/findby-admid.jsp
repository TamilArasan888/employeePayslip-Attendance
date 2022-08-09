<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Admin ByID</title>
</head>
<body>
    <div id="root" align="center">
        <div id="form">
            <form:form action ="" method = "post" modelAttribute = "getadmindetailsbyid">
            <h1>Get Admin Details</h1>
            <div>
                    <label for="adminID">Admin ID : </label>
                    <div>
                        <form:input path="adminID" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="adminName">Admin Name : </label>
                    <div>
                        <form:input path="adminName" readonly="true"/>
                    </div>
                </div>
                <div>
                    <label for="adminPassword">Admin Password : </label>
                    <div>
                        <form:input path="adminPassword" readonly="true"/>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>