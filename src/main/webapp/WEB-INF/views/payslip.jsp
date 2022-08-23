<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payslip</title>
<style type="text/css">

body{
border:2px solid black;
}
label {
	font-size: 15px;
	font-weight: 600;
}

.logo {
	text-align: center;
	color:#3333ff ;
}

h1 {
	text-align: center;
}

h2 {
	text-align: center;
}

h4 {
	text-align: center;
}

p {
	font-size: 20px;
	font-weight:450;
}

.form {
	margin-left: 10%;
}

.basicsalary .form {
	margin-left: 10%;
}

.attendance {
	text-align: center;
}

.payslip-details {
	margin-left: 10%;
}
button{
margin-left:50%;
}
</style>
<script>
	function printFunction() {
		window.print();
	}
</script>
</head>
<body>
<div class="container">
	<div class="header">

		<h1 class="logo">State Bank of India</h1>
		<h2>Branch Code : SBI1001MDU</h2>
		<h4>
			53,Nethaji Road,<br>Near Raja Barley Bakery,<br>Madurai -
			625001
		</h4>
	</div><hr>

	<div class="employee">
		<form:form action="" method="post" modelAttribute="employeeDetails">
			<h2>Employee Details</h2>
			<div class="form">
				<table>
					<caption></caption>
					<tr>
						<th></th>
					</tr>
					<tbody>
						<tr>
							<td><label for="employeeID">Employee ID : </label></td>
							<td><form:input path="employeeID" readonly="true" /></td>
							<td><label for="employeeFirstName">Employee
									FirstName : </label></td>
							<td><form:input path="employeeFirstName" readonly="true" />
							</td>
						</tr>
						<tr>
							<td><label for="employeeLastName">Employee LastName
									: </label></td>
							<td><form:input path="employeeLastName" readonly="true" /></td>
							<td><label for="employeeEmail">Email : </label></td>
							<td><form:input path="employeeEmail" readonly="true" /></td>
						</tr>
						<tr>
							<td><label for="employeePhoneNumber">Phone Number :
							</label></td>
							<td><form:input path="employeePhoneNumber" readonly="true" />
							<td><label for="employeeJobID">Job ID : </label></td>
							<td><form:input path="employeeJobID" readonly="true" /></td>
						</tr>
						<tr>
							<td><label for="employeeRole">Designation : </label></td>
							<td><form:input path="employeeRole" readonly="true" /></td>
							<td><label for="employeeManager">Manager Name : </label></td>
							<td><form:input path="employeeManager" readonly="true" /></td>
						</tr>
						<tr>
							<td><label for="employeeHireDate">HireDate : </label></td>
							<td><form:input path="employeeHireDate" readonly="true" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form:form>
	</div>




	<div class="basicsalary">
		<form:form action="" method="post" modelAttribute="basicSalary">
			<h2>Basic Salary Details</h2>
			<div class="form">
				<table>
					<caption></caption>
					<tr>
						<th></th>
					</tr>
					<tbody>
						<tr>
							<td><label for="employeeRole">Employee Role : </label></td>
							<td><form:input path="employeeRole" readonly="true" /></td>
							<td><label for="employeeBasicSalary">Employee Basic
									Salary : </label></td>
							<td><form:input path="employeeBasicSalary" readonly="true" />
							</td>
						</tr>
						<tr>
							<td><label for="houseRentAllowance">House rent
									Allowance : </label></td>
							<td><form:input path="houseRentAllowance" readonly="true" /></td>
							<td><label for="providentFund">PF : </label></td>
							<td><form:input path="providentFund" readonly="true" /></td>
						</tr>
						<tr>
							<td><label for="dailyAllowance">Daily Allowance : </label></td>
							<td><form:input path="dailyAllowance" readonly="true" /></td>
							<td><label for="incomeTax">Income tax : </label></td>
							<td><form:input path="incomeTax" readonly="true" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form:form>
	</div><hr>


	<div class="attendance">
		<p>Total Days in this month: ${Totaldays}</p>
		<p>No Of Days Present: ${NoOfPrecent}</p>
		<p>No Of Days Leave Taken: ${NoOfLeave}</p>
	</div>



	<form:form action="" method="post" modelAttribute="payslip">
		<h2>Payslip Details</h2>
		<div class="payslip-details">
			<table>
				<caption></caption>
				<tr>
					<th></th>
				</tr>
				<tbody>
					<tr>
						<td><label for="employeeID">Employee Id : </label></td>
						<td><form:input path="employeeID" readonly="true" /></td>
						<td><label for="payslipID">Payslip ID : </label></td>
						<td><form:input path="payslipID" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="payslipDate">Payslip Date : </label></td>
						<td><form:input path="payslipDate" readonly="true" /></td>
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
	<hr>

	<div class="footer">
		<h2>Thank You. Have a nice day!!</h2>
	</div>

	<div>

		<button onclick="printFunction()">Download</button>
	</div>
</div>
</body>
</html>