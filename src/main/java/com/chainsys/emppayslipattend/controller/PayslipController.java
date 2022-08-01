package com.chainsys.emppayslipattend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.emppayslipattend.model.Payslip;
import com.chainsys.emppayslipattend.service.PayslipService;

@Controller
@RequestMapping("/payslipdetails")
public class PayslipController {

	@Autowired
	private PayslipService payService;

	@GetMapping("/paylist")
	public String getPayslip(Model model) {
		List<Payslip> pay = payService.getPayslip();
		model.addAttribute("allpayslipdetails", pay);
		return "list-pay";
	}

	@GetMapping("/getpaybyid")
	public String getPayDetails(@RequestParam("id") int id, Model model) {
		Payslip pay = payService.findByid(id);
		model.addAttribute("getpay", pay);
		return "findby-payid";
	}

	@GetMapping("/deletepayslip")
	public String deletePayslipDetails(@RequestParam("payid") int id) {
		payService.deleteById(id);
		return "redirect:/payslipdetails/paylist";
	}

	@GetMapping("/addpaydetails")
	public String showAddForm(Model model) {
		Payslip pay = new Payslip();
		model.addAttribute("addpaydetail", pay);
		return "add-pay-form";
	}

	@PostMapping("/addpay")
	public String addNewPayslipDetails(@ModelAttribute("addpaydetail") Payslip pay) {
		payService.save(pay);
		return "redirect:/payslipdetails/paylist";
	}

	@GetMapping("/updatepaydetails")
	public String showUpdatePayForm(@RequestParam("payid") int id, Model model) {
		Payslip pay = payService.findByid(id);
		model.addAttribute("updatepaydetails", pay);
		return "update-paydetails";
	}

	@PostMapping("/updatepay")
	public String updatePayDetails(@ModelAttribute("updatepaydetails") Payslip pay) {
		payService.save(pay);
		return "redirect:/payslipdetails/paylist";
	}

}
