<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Details</title>
<script type="text/javascript">
	function validateform() {
		var empname = document.getElementById("name");
		var password = document.getElementById("pass");

		if (empname.value == null || empname.value == "") {
			alert("Name can't be blank");
			return false;
		} else if (password.length < 6) {
			alert("Password must be at least 6 characters long.");
			return false;
		} else {
			true;
		}
	}
</script>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
background-image:
		url(https://us.123rf.com/450wm/vadimjoker/vadimjoker2002/vadimjoker200200048/139381326-admin-word-built-with-letter-cubes-on-a-black-table.jpg?ver=6);
	background-repeat: no-repeat;
	background-size: 1366px 768px;
	text-align: center;
}
h1{
font-family: "Lucida Console", "Courier New", monospace;
font-size:40px;
}
#label{
font-family: Verdana, sans-serif;
font-size:30px;
}
table{
font-size: 30px;
}

#input{
	width: 200px;
	height: 27px;
}

#btn{
border-radius: 25px;
  background: cyan;
  padding: 20px; 
  width: 140px;
}

</style>
</head>
<body>
	<form:form name="myform" onsubmit="return validateform()"
		action="addadmin" method="post" modelAttribute="addadmindetail">
		<h1>Admin Register Form</h1>
		<div align="center">
			<table>
				<tbody>
					<tr>
						<td><label id="label" for="adminID">Admin ID : </label></td>
						<td><form:input id="input" path="adminID" placeholder="Enter Admin Id" /></td>
					</tr>
					<tr>
						<td><label id="label" for="adminName">Admin Name : </label></td>
						<td><form:input id="input" path="adminName" placeholder="Enter Admin Name" /></td>
					</tr>
					<tr>
						<td><label id="label" for="adminPassword">Admin Password : </label></td>
						<td><form:input id="input" type="password" name="password"
								path="adminPassword" placeholder="Enter Admin Password" /></td>
					</tr>
				</tbody>
			</table>
			<br> <br>
			<form:button id="btn" type="submit" name="submit"><b>Add Admin</b></form:button>
		</div>
	</form:form>
</body>
</html>