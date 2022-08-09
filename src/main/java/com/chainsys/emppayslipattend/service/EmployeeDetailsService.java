package com.chainsys.emppayslipattend.service;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.emppayslipattend.dto.EmployeeDetailsAttendanceDTO;
import com.chainsys.emppayslipattend.dto.EmployeeDetailsPayslipDTO;
import com.chainsys.emppayslipattend.model.Admin;
import com.chainsys.emppayslipattend.model.Attendance;
import com.chainsys.emppayslipattend.model.BasicSalary;
import com.chainsys.emppayslipattend.model.EmployeeDetails;
import com.chainsys.emppayslipattend.model.Payslip;
import com.chainsys.emppayslipattend.repository.AttendanceRepository;
import com.chainsys.emppayslipattend.repository.BasicSalaryRepository;
import com.chainsys.emppayslipattend.repository.EmployeeDetailsRepository;
import com.chainsys.emppayslipattend.repository.PayslipRepository;

@Service
public class EmployeeDetailsService {
	@Autowired
	private EmployeeDetailsRepository employeeDetailsRepository;

	@Autowired
	private BasicSalaryRepository basicSalaryRepository;

	@Autowired
	private PayslipRepository payslipRepository;

	@Autowired
	private AttendanceRepository attendanceRepository;

	public EmployeeDetails findById(int id) {
		return employeeDetailsRepository.findById(id);
	}

	public EmployeeDetails save(EmployeeDetails empl) {
		return employeeDetailsRepository.save(empl);
	}

	public void deleteById(int empId) {
		employeeDetailsRepository.deleteById(empId);
	}

	public List<EmployeeDetails> getEmployeeDetails() {
		List<EmployeeDetails> listEmp = employeeDetailsRepository.findAll();
		return listEmp;
	}

	public List<BasicSalary> getAllBasicSalary() {
		return basicSalaryRepository.findAll();
	}

	public Optional<BasicSalary> getBasicSalaryById(String role) {
		return basicSalaryRepository.findById(role);
	}

	public EmployeeDetailsPayslipDTO getEmployeedetailsPayslip(int id) {
		EmployeeDetails employeeDetails = findById(id);
		EmployeeDetailsPayslipDTO employeeDetailsPayslipdto = new EmployeeDetailsPayslipDTO();
		employeeDetailsPayslipdto.setEmployeeDetails(employeeDetails);
		List<Payslip> payslipList = payslipRepository.findByEmployeeID(id);
		Iterator<Payslip> payslipItr = payslipList.iterator();
		while(payslipItr.hasNext()) {
			employeeDetailsPayslipdto.addPayslip((Payslip)payslipItr.next());
		}
		return employeeDetailsPayslipdto;
	}
	
	public EmployeeDetailsAttendanceDTO getEmployeedetailsAttendance(int id) {
		EmployeeDetails employeeDetails = findById(id);
		EmployeeDetailsAttendanceDTO employeeDetailsAttendancedto = new EmployeeDetailsAttendanceDTO();
		employeeDetailsAttendancedto.setEmployeeDetails(employeeDetails);
		List<Attendance> attendanceList = attendanceRepository.findByEmployeeID(id);
		Iterator<Attendance> attendanceItr = attendanceList.iterator();
		while(attendanceItr.hasNext()) {
			employeeDetailsAttendancedto.addAttendance((Attendance)attendanceItr.next());
		}
		return employeeDetailsAttendancedto;
	}
	
	public EmployeeDetails getEmployeeByIDEmailAndPassword(int id,String email, String password) {
        return employeeDetailsRepository.findByEmployeeIDAndEmployeeEmailAndEmployeePassword(id, email, password);
    }

}
