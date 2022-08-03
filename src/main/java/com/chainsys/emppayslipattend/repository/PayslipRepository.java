package com.chainsys.emppayslipattend.repository;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.emppayslipattend.model.Payslip;

import java.util.List;


public interface PayslipRepository extends CrudRepository<Payslip,Integer>  {
	Payslip findById(int pay_Id);
	Payslip save(Payslip pay); 
    void deleteById(int pay_Id);
    List<Payslip> findAll();
    List<Payslip> findByEmployeeID(int id);
}
