package com.chainsys.emppayslipattend.repository;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.emppayslipattend.model.EmployeeDetails;

import java.util.List;
public interface EmployeeDetailsRepository extends CrudRepository<EmployeeDetails,Integer>  {
	EmployeeDetails findById(int id);
	EmployeeDetails save(EmployeeDetails empl); 
    void deleteById(int empId);
    List<EmployeeDetails> findAll();
    EmployeeDetails findByEmployeeIDAndEmployeeEmailAndEmployeePassword(int id,String email,String password);

}

