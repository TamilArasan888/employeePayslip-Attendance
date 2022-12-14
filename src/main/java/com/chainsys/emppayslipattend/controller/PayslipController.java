package com.chainsys.emppayslipattend.controller;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	@GetMapping("/paysliplistforadmin")
	public String getPayslipByAdmin(Model model) {
		List<Payslip> payslip = payslipService.getPayslip();
		model.addAttribute("allpayslipdetails", payslip);
		return "payslip-list-foradmin";
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
		return "redirect:/payslipdetails/paysliplistforadmin";
	}

	@GetMapping("/addpayslipdetails")
	public String showAddForm(Model model) {
		Payslip payslip = new Payslip();
		model.addAttribute("addpayslipdetail", payslip);
		return "add-pay-form";
	}

	@PostMapping("/addpayslip")
	public String addNewPayslipDetails(@Valid @ModelAttribute("addpayslipdetail") Payslip payslip, Errors errors) {
		if (errors.hasErrors()) {
			return "add-pay-form";
		} else {
			payslipService.save(payslip);
			return "redirect:/payslipdetails/paysliplistforadmin";
		}
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

	@GetMapping("/payslip")
	public String payslip(@RequestParam("id") int id, @RequestParam("payslipDate") Date payslipDate, Model model) {
		EmployeeDetails employeeDetails = employeeService.findById(id);
		model.addAttribute("employeeDetails", employeeDetails);
		Payslip payslip = payslipService.findlastPayslip(id, payslipDate);
		model.addAttribute("payslip", payslip);
		Optional<BasicSalary> basicSalary = basicSalaryService.getBasicSalaryById(employeeDetails.getEmployeeRole());
		BasicSalary basicSal = null;
		if (basicSalary.isPresent()) {
			basicSal = basicSalary.get();
		}
		List<Integer>days=payslipService.getAttendance(id, payslipDate);
		model.addAttribute("NoOfPrecent", days.get(0));
		model.addAttribute("Totaldays", days.get(1));
		model.addAttribute("NoOfLeave", days.get(2));
		model.addAttribute("basicSalary", basicSal);
		return "payslip";
	}
}
