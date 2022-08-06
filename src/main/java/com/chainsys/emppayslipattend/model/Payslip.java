package com.chainsys.emppayslipattend.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Payslip")
public class Payslip {
	@Id
	@Column(name = "payslip_Id")
	private int payslipID;

	@Column(name = "payslip_Date")
	private Date payslipDate;

	@Column(name = "gross_Salary")
	private float grossSalary;

	@Column(name = "net_Salary")
	private float netSalary;

	@Column(name = "emp_id")
	private int employeeID;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "emp_Id", nullable = false, insertable = false, updatable = false)
	private EmployeeDetails employeeDetails;
	
	public EmployeeDetails getEmployeeDetails() {
		return employeeDetails;
	}

	public void setEmployeeDetails(EmployeeDetails employeeDetails) {
		this.employeeDetails = employeeDetails;
	}

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

	public float getGrossSalary() {
		return grossSalary;
	}

	public void setGrossSalary(float grossSalary) {
		this.grossSalary = grossSalary;
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
