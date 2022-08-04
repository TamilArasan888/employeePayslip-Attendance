package com.chainsys.emppayslipattend.businesslogic;

import java.util.Optional;

import com.chainsys.emppayslipattend.model.BasicSalary;

public class BusinessLogic {
	public static float grossSalaryCalculation(Optional<BasicSalary> basicSal) {
		BasicSalary basicSalary=basicSal.get();
		return basicSalary.getEmployeeBasicSalary()+basicSalary.getHouseRentAllowance()+basicSalary.getDailyAllowance();
	}
	public static float netSalaryCalculation(float grossSalary,Optional<BasicSalary> basicSal) {
		BasicSalary basicSalary=basicSal.get();
		return grossSalary-basicSalary.getProvidentFund()-(grossSalary*basicSalary.getIncomeTax()/100);
	}
	
}
