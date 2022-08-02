package com.chainsys.emppayslipattend.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.emppayslipattend.model.BasicSalary;
import com.chainsys.emppayslipattend.model.EmployeeDetails;
import com.chainsys.emppayslipattend.repository.BasicSalaryRepository;
import com.chainsys.emppayslipattend.repository.EmployeeDetailsRepository;

@Service
public class EmployeeDetailsService {
	@Autowired
	private EmployeeDetailsRepository employeeDetailsRepository;
	
	@Autowired
	private BasicSalaryRepository basicSalaryRepository;

	public EmployeeDetails findByid(int id) {
		return employeeDetailsRepository.findById(id);
	}

	public EmployeeDetails save(EmployeeDetails empl) {
		return employeeDetailsRepository.save(empl);
	}

	public void deleteById(int emp_id) {
		employeeDetailsRepository.deleteById(emp_id);
	}

	public List<EmployeeDetails> getEmployeeDetails() {
		List<EmployeeDetails> listEmp = employeeDetailsRepository.findAll();
		return listEmp;
	}
	
	public List<BasicSalary> getAllBasicSalary(){
		return basicSalaryRepository.findAll();
	}
	public Optional<BasicSalary> getBasicSalaryById(String role){
		return basicSalaryRepository.findById(role);
	}

}
