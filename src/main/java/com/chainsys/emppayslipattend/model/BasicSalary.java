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
	
	
}
