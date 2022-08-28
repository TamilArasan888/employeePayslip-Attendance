package com.chainsys.emppayslipattend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.emppayslipattend.model.Admin;
import com.chainsys.emppayslipattend.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;

	public Admin findByid(int id) {
		return adminRepository.findById(id);
	}

	public Admin save(Admin adm) {
		return adminRepository.save(adm);
	}

	public void deleteById(int admid) {
		adminRepository.deleteById(admid);
	}

	public List<Admin> getAdmin() {
		return adminRepository.findAll();
	}
	
	public Admin getAdminByIDAndPassword(int id,String password) {
        return adminRepository.findByAdminIDAndAdminPassword(id,password);
    }
	
}
