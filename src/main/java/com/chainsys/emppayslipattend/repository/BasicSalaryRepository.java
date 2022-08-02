package com.chainsys.emppayslipattend.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.emppayslipattend.model.BasicSalary;

public interface BasicSalaryRepository extends CrudRepository<BasicSalary,String> {
	List<BasicSalary> findAll();
	Optional<BasicSalary> findById(String role);
}
