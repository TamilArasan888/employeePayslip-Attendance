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

import com.chainsys.emppayslipattend.model.Admin;
import com.chainsys.emppayslipattend.service.AdminService;

@Controller
@RequestMapping("/admindetails")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@GetMapping("/adminlist")
	public String getAllAdminDetailsFromDB(Model model) {
		List<Admin> admin = adminService.getAdmin();
		model.addAttribute("getalladmindetails", admin);
		return "admin-list";
	}

	@GetMapping("/getadmindetailsbyid")
	public String getAdminDetailsById(@RequestParam("adminId") int id, Model model) {
		Admin admin = adminService.findByid(id);
		model.addAttribute("getadmindetailsbyid", admin);
		return "findby-admid";
	}

	@GetMapping("/deleteadmindetailsbyid")
	public String deleteAdminDetailsbyid(@RequestParam("adminId") int id) {
		adminService.deleteById(id);
		return "redirect:/admindetails/adminlist";
	}

	@GetMapping("/addadmindetailsbyuser")
	public String showAddAdminForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("addadmindetail", admin);
		return "add-admin-details";
	}

	@PostMapping("/addadmin")
	public String addNewAdminDetails(@ModelAttribute("addadmindetail") Admin admin) {
		adminService.save(admin);
		return "redirect:/admindetails/adminlist";
	}

	@GetMapping("/updateadmindetails")
	public String showUpdateAdminForm(@RequestParam("adminId") int id, Model model) {
		Admin admin = adminService.findByid(id);
		model.addAttribute("updateadmindetails", admin);
		return "update-admindetails";
	}

	@PostMapping("/updateadmin")
	public String updateAdminDetails(@ModelAttribute("updateadmindetails") Admin admin) {
		adminService.save(admin);
		return "redirect:/admindetails/adminlist";
	}

}