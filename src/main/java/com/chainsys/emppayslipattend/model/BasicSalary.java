package com.chainsys.emppayslipattend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="basic_Salary")
public class BasicSalary {
	@Id
	@Column(name="emp_Role")
	private String employeeRole;
	
	@Column(name="emp_Basicsalary")
	private float employeeBasicSalary;
	
	@Column(name="HRA")
	private float houseRentAllowance;
	
	@Column(name="PF")
	private float providentFund;
	
	@Column(name="DA")
	private float dailyAllowance;
	
	@Column(name="income_Tax")
	private float incomeTax;

	public String getEmployeeRole() {
		return employeeRole;
	}

	public void setEmployeeRole(String employeeRole) {
		this.employeeRole = employeeRole;
	}

	public float getEmployeeBasicSalary() {
		return employeeBasicSalary;
	}

	public void setEmployeeBasicSalary(float employeeBasicSalary) {
		this.employeeBasicSalary = employeeBasicSalary;
	}

	public float getHouseRentAllowance() {
		return houseRentAllowance;
	}

	public void setHouseRentAllowance(float houseRentAllowance) {
		this.houseRentAllowance = houseRentAllowance;
	}

	public float getProvidentFund() {
		return providentFund;
	}

	public void setProvidentFund(float providentFund) {
		this.providentFund = providentFund;
	}

	public float getDailyAllowance() {
		return dailyAllowance;
	}

	public void setDailyAllowance(float dailyAllowance) {
		this.dailyAllowance = dailyAllowance;
	}

	public float getIncomeTax() {
		return incomeTax;
	}

	public void setIncomeTax(float incomeTax) {
		this.incomeTax = incomeTax;
	}
}
