package com.chainsys.emppayslipattend.repository;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.emppayslipattend.model.Admin;

import java.util.List;

public interface AdminRepository extends CrudRepository<Admin,Integer>  {
	Admin findById(int admId);
    Admin save(Admin adm); 
    void deleteById(int admId);
    List<Admin> findAll();
    Admin findByAdminIDAndAdminNameAndAdminPassword(int id,String name, String password);

}
