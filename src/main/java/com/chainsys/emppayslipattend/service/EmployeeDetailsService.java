package com.chainsys.emppayslipattend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.emppayslipattend.model.EmployeeDetails;
import com.chainsys.emppayslipattend.repository.EmployeeDetailsRepository;

@Service
public class EmployeeDetailsService {
	@Autowired
	private EmployeeDetailsRepository employeeDetailsReposit;

	public EmployeeDetails findByid(int id) {
		return employeeDetailsReposit.findById(id);
	}

	public EmployeeDetails save(EmployeeDetails empl) {
		return employeeDetailsReposit.save(empl);
	}

	public void deleteById(int emp_id) {
		employeeDetailsReposit.deleteById(emp_id);
	}

	public List<EmployeeDetails> getEmployeeDetails() {
		List<EmployeeDetails> listEmp = employeeDetailsReposit.findAll();
		return listEmp;
	}

}
