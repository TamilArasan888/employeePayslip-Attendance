package com.chainsys.emppayslipattend.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.emppayslipattend.businesslogic.BusinessLogic;
import com.chainsys.emppayslipattend.model.BasicSalary;
import com.chainsys.emppayslipattend.model.EmployeeDetails;
import com.chainsys.emppayslipattend.model.Payslip;
import com.chainsys.emppayslipattend.service.BasicSalaryService;
import com.chainsys.emppayslipattend.service.EmployeeDetailsService;
import com.chainsys.emppayslipattend.service.PayslipService;

@Controller
@RequestMapping("/payslipdetails")
public class PayslipController {

	@Autowired
	private PayslipService payslipService;

	@Autowired
	private EmployeeDetailsService employeeService;
	
	@Autowired
	private BasicSalaryService basicSalaryService;
	@GetMapping("/paysliplist")
	public String getPayslip(Model model) {
		List<Payslip> payslip = payslipService.getPayslip();
		model.addAttribute("allpayslipdetails", payslip);
		return "list-pay";
	}

	@GetMapping("/findpayslipbyid")
	public String getPayDetails(@RequestParam("payslipid") int id, Model model) {
		Payslip payslip = payslipService.findByid(id);
		model.addAttribute("getpayslip", payslip);
		return "findby-payid";
	}

	@GetMapping("/deletepayslipbyid")
	public String deletePayslipDetails(@RequestParam("payslipid") int id) {
		payslipService.deleteById(id);
		return "redirect:/payslipdetails/paysliplist";
	}

	@GetMapping("/addpayslipdetails")
	public String showAddForm(Model model) {
		Payslip payslip = new Payslip();
		model.addAttribute("addpayslipdetail", payslip);
		return "add-pay-form";
	}

	@PostMapping("/addpayslip")
	public String addNewPayslipDetails(@ModelAttribute("addpaydetail") Payslip payslip) {
		EmployeeDetails employee=employeeService.findById(payslip.getEmployeeID());
		Optional<BasicSalary> basicSalary=basicSalaryService.getBasicSalaryById(employee.getEmployeeRole());
		float grossSalary=BusinessLogic.grossSalaryCalculation(basicSalary);
		payslip.setGrossSalary(grossSalary);
		payslip.setNetSalary(BusinessLogic.netSalaryCalculation(grossSalary, basicSalary));
		payslipService.save(payslip);
		return "redirect:/payslipdetails/paysliplist";
	}

	@GetMapping("/updatepayslipdetails")
	public String showUpdatePayForm(@RequestParam("payslipid") int id, Model model) {
		Payslip payslip = payslipService.findByid(id);
		model.addAttribute("updatepayslipdetails", payslip);
		return "update-paydetails";
	}

	@PostMapping("/updatepayslip")
	public String updatePayDetails(@ModelAttribute("updatepaydetails") Payslip payslip) {
		payslipService.save(payslip);
		return "redirect:/payslipdetails/paysliplist";
	}

}
