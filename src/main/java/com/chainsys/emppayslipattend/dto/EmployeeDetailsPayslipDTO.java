package com.chainsys.emppayslipattend.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.emppayslipattend.model.EmployeeDetails;
import com.chainsys.emppayslipattend.model.Payslip;

public class EmployeeDetailsPayslipDTO {
	private EmployeeDetails employeeDetails;
	private List<Payslip> payslipList = new ArrayList<Payslip>();

	public EmployeeDetails getEmployeeDetails() {
		return employeeDetails;
	}

	public void setEmployeeDetails(EmployeeDetails employeeDetails) {
		this.employeeDetails = employeeDetails;
	}

	public void addPayslip(Payslip payslip) {
		payslipList.add(payslip);
	}

	public List<Payslip> getPayslipList() {
		return payslipList;
	}

}
