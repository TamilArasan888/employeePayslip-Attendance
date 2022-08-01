package com.chainsys.emppayslipattend.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_Details")
public class EmployeeDetails {
	@Id
	@Column(name = "emp_Id")
	private int employeeID;

	@Column(name = "emp_Firstname")
	private String employeeFirstName;

	@Column(name = "emp_Lastname")
	private String employeeLastName;

	@Column(name = "emp_Gender")
	private String employeeGender;

	@Column(name = "emp_DOB")
	private Date employeeDOB;

	@Column(name = "emp_Email")
	private String employeeEmail;

	@Column(name = "emp_Password")
	private String employeePassword;

	@Column(name = "emp_Phoneno")
	private long employeePhoneNumber;

	@Column(name = "emp_Address")
	private String employeeAddress;

	@Column(name = "emp_Jobid")
	private int emplpoyeeJobID;

	@Column(name = "emp_Role")
	private String employeeRole;

	@Column(name = "emp_Manager")
	private String employeeManager;

	@Column(name = "emp_Hiredate")
	private Date employeeHireDate;

	@Column(name = "emp_Workinghours")
	private int employeeWorkingHours;

	public int getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}

	public String getEmployeeFirstName() {
		return employeeFirstName;
	}

	public void setEmployeeFirstName(String employeeFirstName) {
		this.employeeFirstName = employeeFirstName;
	}

	public String getEmployeeLastName() {
		return employeeLastName;
	}

	public void setEmployeeLastName(String employeeLastName) {
		this.employeeLastName = employeeLastName;
	}

	public String getEmployeeGender() {
		return employeeGender;
	}

	public void setEmployeeGender(String employeeGender) {
		this.employeeGender = employeeGender;
	}

	public Date getEmployeeDOB() {
		return employeeDOB;
	}

	public void setEmployeeDOB(Date employeeDOB) {
		this.employeeDOB = employeeDOB;
	}

	public String getEmployeeEmail() {
		return employeeEmail;
	}

	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}

	public String getEmployeePassword() {
		return employeePassword;
	}

	public void setEmployeePassword(String employeePassword) {
		this.employeePassword = employeePassword;
	}

	public long getEmployeePhoneNumber() {
		return employeePhoneNumber;
	}

	public void setEmployeePhoneNumber(long employeePhoneNumber) {
		this.employeePhoneNumber = employeePhoneNumber;
	}

	public String getEmployeeAddress() {
		return employeeAddress;
	}

	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}

	public int getEmplpoyeeJobID() {
		return emplpoyeeJobID;
	}

	public void setEmplpoyeeJobID(int emplpoyeeJobID) {
		this.emplpoyeeJobID = emplpoyeeJobID;
	}

	public String getEmployeeRole() {
		return employeeRole;
	}

	public void setEmployeeRole(String employeeRole) {
		this.employeeRole = employeeRole;
	}

	public String getEmployeeManager() {
		return employeeManager;
	}

	public void setEmployeeManager(String employeeManager) {
		this.employeeManager = employeeManager;
	}

	public Date getEmployeeHireDate() {
		return employeeHireDate;
	}

	public void setEmployeeHireDate(Date employeeHireDate) {
		this.employeeHireDate = employeeHireDate;
	}

	public int getEmployeeWorkingHours() {
		return employeeWorkingHours;
	}

	public void setEmployeeWorkingHours(int employeeWorkingHours) {
		this.employeeWorkingHours = employeeWorkingHours;
	}

	
}
