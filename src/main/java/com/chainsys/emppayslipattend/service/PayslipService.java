package com.chainsys.emppayslipattend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.emppayslipattend.model.Payslip;
import com.chainsys.emppayslipattend.repository.PayslipRepository;

@Service
public class PayslipService {

	@Autowired
	private PayslipRepository payslipReposit;

	public Payslip findByid(int id) {
		return payslipReposit.findById(id);
	}

	public Payslip save(Payslip pay) {
		return payslipReposit.save(pay);
	}

	@Transactional
	public void deleteById(int payid) {
		payslipReposit.deleteById(payid);
	}

	public List<Payslip> getPayslip() {
		List<Payslip> listPay = payslipReposit.findAll();
		return listPay;
	}

}
