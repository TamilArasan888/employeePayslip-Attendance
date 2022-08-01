package com.chainsys.emppayslipattend.model;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Payslip")
public class Payslip {
	@Id
	@Column(name="payslip_Id")
	private int payslipID;
	
	@Column(name="payslip_Date")
	private Date payslipDate;
	
	@Column(name="HRA")
	private float homeRentAllowance;
	
	@Column(name="gross_Salary")
	private float grossSalary;
	
	@Column(name="PF")
	private float providentFund;
	
	@Column(name="DA")
	private float dailyAllowance;
	
	@Column(name="income_Tax")
	private float incomeTax;
	
	@Column(name="net_Salary")
	private float netSalary;
	
	@Column(name="emp_id")
	private int employeeID;

	public int getPayslipID() {
		return payslipID;
	}

	public void setPayslipID(int payslipID) {
		this.payslipID = payslipID;
	}

	public Date getPayslipDate() {
		return payslipDate;
	}

	public void setPayslipDate(Date payslipDate) {
		this.payslipDate = payslipDate;
	}

	public float getHomeRentAllowance() {
		return homeRentAllowance;
	}

	public void setHomeRentAllowance(float homeRentAllowance) {
		this.homeRentAllowance = homeRentAllowance;
	}

	public float getGrossSalary() {
		return grossSalary;
	}

	public void setGrossSalary(float grossSalary) {
		this.grossSalary = grossSalary;
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

	public float getNetSalary() {
		return netSalary;
	}

	public void setNetSalary(float netSalary) {
		this.netSalary = netSalary;
	}

	public int getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}
	
	
}
