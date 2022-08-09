<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Details</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
    <div id="root" align="center">
        <div id="form">
            <form:form action ="updateadmin" method = "post" modelAttribute = "updateadmindetails">
            <h1>Update Admin Details</h1>
            <div>
					<label for="adminID">Admin ID : </label>
					<div>
						<form:input path="adminID" />
					</div>
				</div>
				<form:errors path="adminID" cssClass="text-danger" />
				<div>
					<label for="adminName">Admin Name : </label>
					<div>
						<form:input path="adminName" />
					</div>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				<div>
					<label for="adminPassword">Admin Password : </label>
					<div>
						<form:input path="adminPassword" />
					</div>
				</div>
				<form:errors path="adminPassword" cssClass="text-danger" />
                <div>
                    <form:button>Update Admin Details</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>