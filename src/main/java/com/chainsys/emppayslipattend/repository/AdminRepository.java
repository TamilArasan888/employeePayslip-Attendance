package com.chainsys.emppayslipattend.repository;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.emppayslipattend.model.Admin;

import java.util.List;

public interface AdminRepository extends CrudRepository<Admin,Integer>  {
	Admin findById(int adm_Id);
    Admin save(Admin adm); 
    void deleteById(int adm_Id);
    List<Admin> findAll();
}
