package com.chainsys.emppayslipattend.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.emppayslipattend.businesslogic.BusinessLogic;
import com.chainsys.emppayslipattend.model.Attendance;
import com.chainsys.emppayslipattend.model.BasicSalary;
import com.chainsys.emppayslipattend.model.EmployeeDetails;
import com.chainsys.emppayslipattend.model.Payslip;
import com.chainsys.emppayslipattend.repository.PayslipRepository;

@Service
public class PayslipService {

	@Autowired
	private PayslipRepository payslipRepository;
	@Autowired
	private EmployeeDetailsService employeeService;
	@Autowired
	private BasicSalaryService basicSalaryService;
	@Autowired
	private AttendanceService attendanceService;
	
	public Payslip findByid(int id) {
		return payslipRepository.findById(id);
	}
	public Payslip findlastPayslip(int id,Date payslipDate) {
		return payslipRepository.findByEmployeeIDAndPayslipDate(id, payslipDate);
	}
	public Payslip save(Payslip payslip) {
		EmployeeDetails employee=employeeService.findById(payslip.getEmployeeID());
		Optional<BasicSalary> basicSalary=basicSalaryService.getBasicSalaryById(employee.getEmployeeRole());
		
		float grossSalary=BusinessLogic.grossSalaryCalculation(basicSalary);
		payslip.setGrossSalary(grossSalary);
		
		Date[] dates=BusinessLogic.fromDateCalculation(payslip.getPayslipDate());
		List<Attendance> attendancelist=attendanceService.getAttendanceBetweenTwoDates(dates[0],dates[1]);
		
		int noOfPresent=BusinessLogic.findEmployeeAttendance(attendancelist,payslip.getEmployeeID());
		
		int totalNoDays=BusinessLogic.getCutSalaryPercent(dates);
		
		payslip.setNetSalary(BusinessLogic.netSalaryCalculation(grossSalary, basicSalary,totalNoDays,noOfPresent));
		
		return payslipRepository.save(payslip);
	}
	public List<Integer> getAttendance(int id,Date payslipdate) {
		List<Integer> days=new ArrayList<>();
		Date[] dates=BusinessLogic.fromDateCalculation(payslipdate);
		
		List<Attendance> attendancelist=attendanceService.getAttendanceBetweenTwoDates(dates[0],dates[1]);
        int noOfPresent=BusinessLogic.findEmployeeAttendance(attendancelist,id);
		int totalNoDays=BusinessLogic.getCutSalaryPercent(dates);
		days.add(noOfPresent);
		days.add(totalNoDays);
		days.add(totalNoDays-noOfPresent);
		return days;
	}

	public List<Payslip> getPayslip() {
		return payslipRepository.findAll();
	}
	
	@Transactional
	public void deleteById(int payid) {
		payslipRepository.deleteById(payid);
	}

}
