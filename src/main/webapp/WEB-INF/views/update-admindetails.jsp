<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Details</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action ="updateadmin" method = "post" modelAttribute = "updateadmdetails">
            <div>
                    <label for="adminID">Admin ID : </label>
                    <div>
                        <form:input path="adminID" />
                    </div>
                </div>
                <div>
                    <label for="adminName">Admin Name : </label>
                    <div>
                        <form:input path="adminName" />
                    </div>
                </div>
                <div>
                    <label for="adminPassword">Admin Password : </label>
                    <div>
                        <form:input path="adminPassword" />
                    </div>
                </div>
                <div>
                    <form:button>Update Admin Details</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>