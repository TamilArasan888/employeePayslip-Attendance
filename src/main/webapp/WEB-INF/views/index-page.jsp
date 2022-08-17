<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
</head>
<body>
<h1>INDEX</h1>
<h1>Employee Details Crud</h1>
<a href="/employeedetails/addemployeedetails">Add Employee Details</a><br>
<a href="/employeedetails/employeelist">View All Employee Details</a><br>
<a href="/employeedetails/updateemployeedetails?employeeid=">Update Employee Details By Id</a><br>
<a href="/employeedetails/deleteemployeebyid?employeeid=">Delete Employee Details By Id</a><br>
<a href="/employeedetails/findemployeebyid?employeeid=">Find Employee By Id</a><br>

<h1>Payslip Crud</h1>
<a href="/payslipdetails/addpayslipdetails">Add Payslip Details</a><br>
<a href="/payslipdetails/paysliplist">View All Payslip Details</a><br>
<a href="/payslipdetails/updatepayslipdetails?payslipid=">Update Payslip Details By Id</a><br>
<a href="/payslipdetails/deletepayslipbyid?payslipid=">Delete Payslip By Id</a><br>
<a href="/payslipdetails/findpayslipbyid?payslipid=">Find Payslip By Id</a><br>


<h1>Attendance Crud</h1>
<a href="/attendancedetails/addattendancedetails">Add Attendance  Details</a><br>
<a href="/attendancedetails/attendancelist">View All Attendance Details</a><br>
<a href="/attendancedetails/updateattendancedetails?attendanceid=">Update Attendance Details By Id</a><br>
<a href="/attendancedetails/deleteattendancebyid?attendanceid=">Delete Attendance By Id</a><br>
<a href="/attendancedetails/findattendancebyid?attendanceid=">Find Attendance By Id</a><br>


<h1>Admin Crud</h1>
<a href="/admindetails/addadmindetailsbyuser">Add Admin Details</a><br>
<a href="/admindetails/adminlist">View All Admin Details</a><br>
<a href="/admindetails/updateadmindetails?adminid=">Update Admin Details By Id</a><br>
<a href="/admindetails/deleteadmindetailsbyid?adminid=">Delete Admin By Id</a><br>
<a href="/admindetails/getadmindetailsbyid?adminid=">Find Admin By Id</a><br>

<h1>Get Employee details & His Payslip list</h1>
<a href="/employeedetails/getemployeepaysliplist?id=">Get EmployeeDetails & Payslip</a><br>

<h1>Get Employee details & His Attendance list</h1>
<a href="/employeedetails/getemployeeattendancelist?id=">Get EmployeeDetails & Attendance</a><br>
</body>
</html>