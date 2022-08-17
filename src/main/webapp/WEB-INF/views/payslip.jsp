<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payslip</title>
</head>
<body>
	<div class="header">
	
	<h1>State Bank of India</h1>
	<h2>Branch Code : SBI1001MDU</h2>
	<h2>53,Nethaji Road,<br>Near Raja barley Bakery,<br>Madurai - 625001</h2>
	<hr>
	</div>
	
	<div class="employee">
	<form:form action="" method="post" modelAttribute="getemployeebyid">
		<h1>Employee Details</h1>
		<div class="form">
			<table>
			<caption></caption>
			<tr><th></th></tr>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee ID : </label></td>
						<td><form:input path="employeeID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeFirstName">Employee FirstName
								: </label></td>
						<td><form:input path="employeeFirstName" readonly="true" />
						</td>
					</tr>
					<tr>
						<td><label for="employeeLastName">Employee LastName :
						</label></td>
						<td><form:input path="employeeLastName" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeGender">Gender : </label></td>
						<td><form:input path="employeeGender" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeDOB">Date Of Birth : </label></td>
						<td><form:input path="employeeDOB" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeEmail">Email : </label></td>
						<td><form:input path="employeeEmail" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeePassword">Password : </label></td>
						<td><form:input path="employeePassword" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeePhoneNumber">Phone Number : </label></td>
						<td><form:input path="employeePhoneNumber" readonly="true" />
						</td>
					</tr>
					<tr>
						<td><label for="employeeAddress">Address : </label></td>
						<td><form:input path="employeeAddress" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeJobID">Job ID : </label></td>
						<td><form:input path="employeeJobID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeRole">Designation : </label></td>
						<td><form:input path="employeeRole" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeManager">Manager Name : </label></td>
						<td><form:input path="employeeManager" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeHireDate">HireDate : </label></td>
						<td><form:input path="employeeHireDate" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="employeeWorkingHours">WorkingHours :
						</label></td>
						<td><form:input path="employeeWorkingHours" readonly="true" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
	
	</div>
	
	<div class="attendance">

	
	
	
	</div>
	
	
	
	<div class="payslip">
	<h2>PaySlip</h2>
		<form:form action="" method="post" modelAttribute="getpayslip">
		<h1>Payslip Details</h1>
		<div class="form">
			<table>
			<caption></caption>
			<tr><th></th></tr>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee Id : </label></td>
						<td><form:input path="employeeID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="payslipID">Payslip ID : </label></td>
						<td><form:input path="payslipID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="payslipDate">Payslip Date : </label></td>
						<td><form:input path="payslipDate" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="grossSalary">Gross Salary : </label></td>
						<td><form:input path="grossSalary" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="netSalary">Net Salary : </label></td>
						<td><form:input path="netSalary" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
	
	</div>
	
	
	
	
	
	
	<div class="footer">
	
	
	</div>
	
</body>
</html>