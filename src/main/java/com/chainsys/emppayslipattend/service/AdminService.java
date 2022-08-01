package com.chainsys.emppayslipattend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.emppayslipattend.model.Admin;
import com.chainsys.emppayslipattend.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository adminReposit;

	public Admin findByid(int id) {
		return adminReposit.findById(id);
	}

	public Admin save(Admin adm) {
		return adminReposit.save(adm);
	}

	public void deleteById(int adm_id) {
		adminReposit.deleteById(adm_id);
	}

	public List<Admin> getAdmin() {
		List<Admin> listAdm = adminReposit.findAll();
		return listAdm;
	}

}
