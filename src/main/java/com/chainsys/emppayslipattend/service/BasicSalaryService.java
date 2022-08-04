package com.chainsys.emppayslipattend.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.emppayslipattend.model.BasicSalary;
import com.chainsys.emppayslipattend.repository.BasicSalaryRepository;

@Service
public class BasicSalaryService {
	@Autowired
	private BasicSalaryRepository basicSalaryRepository;
	
	public Optional<BasicSalary> getBasicSalaryById(String role) {
		return basicSalaryRepository.findById(role);
	}
}
