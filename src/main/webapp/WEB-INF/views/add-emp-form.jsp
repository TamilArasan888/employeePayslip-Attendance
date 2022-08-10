<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee Details</title>
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
			<form:form action="addemployee" method="post"
				modelAttribute="addemployeedetail">
				
				<h1>Employee Registration Form</h1>
				
					<%-- <div>
						<label for="employeeID">Employee ID : </label>
						<form:input path="employeeID" placeholder="Enter Your Employee Id" required="true"/>
					</div>
					<form:errors path="employeeID" cssClass="text-danger" /> --%>
					
					<div>
						<label for="employeeFirstName">Employee FirstName : </label>
						<form:input path="employeeFirstName" placeholder="Enter Your First Name" required="true"/>
					</div>
					<form:errors path="employeeFirstName" cssClass="text-danger" />
				
				<div>
					<label for="employeeLastName">Employee LastName : </label>
					<form:input path="employeeLastName" placeholder="Enter Your Last Name" required="true"/>
				</div>
				<form:errors path="employeeLastName" cssClass="text-danger" />
				
				<div>
					<label for="employeeGender">Gender : </label>
					<form:radiobutton path="employeeGender" value="Male"/>
					Male
					<form:radiobutton path="employeeGender" value="Female" />
					Female
				</div>
				<form:errors path="employeeGender" cssClass="text-danger" />
				
				<div>
					<label for="employeeDOB">Date Of Birth : </label>
					<form:input type="date" path="employeeDOB" required="true"/>
				</div>
				
				<div>
					<label for="employeeEmail">Email : </label>
					<form:input path="employeeEmail" placeholder="Enter Your Email ID" required="true"/>
				</div>
				<form:errors path="employeeEmail" cssClass="text-danger" />
				
				<div>
					<label for="employeePassword">Password : </label>
					<form:input type="password" path="employeePassword" placeholder="Enter Your Password" required="true"/>
				</div>
				<form:errors path="employeePassword" cssClass="text-danger" />
				
				<div>
					<label for="employeePhoneNumber">Phone Number : </label>
					<form:input path="employeePhoneNumber" placeholder="Enter Your Phone Number" required="true"/>
				</div>
				<form:errors path="employeePhoneNumber" cssClass="text-danger" />
				
				<div>
					<label for="employeeAddress">Address : </label>
					<form:input path="employeeAddress" placeholder="Enter Your Address"/>
				</div>
				<form:errors path="employeeAddress" cssClass="text-danger" />
				
				<%-- <div>
					<label for="employeeJobID">Job ID : </label>
					<form:input path="employeeJobID" placeholder="Enter Your Job Id" required="true"/>
				</div>
				<form:errors path="employeeJobID" cssClass="text-danger" /> --%>
				
				<div>
					<label for="employeeRole">Employee Role : </label>
					<form:select path="employeeRole">
						<c:forEach var="basicSalary" items="${basicSalary}">
							<form:option value="${basicSalary.employeeRole}"
								label="${basicSalary.employeeRole}" />
						</c:forEach>
					</form:select>
				</div>
				
				<div>
					<label for="employeeManager">Manager Name : </label>
					<form:input path="employeeManager" placeholder="Enter Your Manager Name"/>
				</div>
				<form:errors path="employeeManager" cssClass="text-danger" />
				
				<div>
					<label for="employeeHireDate">HireDate : </label>
					<form:input type="date" path="employeeHireDate" placeholder="Enter Your HireDate"/>
				</div>
				
				<div>
					<label for="employeeWorkingHours">WorkingHours : </label>
					<form:input path="employeeWorkingHours" placeholder="Enter Your Working Hours"/>
				</div>
				<form:errors path="employeeWorkingHours" cssClass="text-danger" />
				
				<div>
					<form:button>Add Employee</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>