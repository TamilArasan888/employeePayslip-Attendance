package com.chainsys.emppayslipattend.controller;

import java.util.List;

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
import com.chainsys.emppayslipattend.model.Admin;
import com.chainsys.emppayslipattend.service.AdminService;

@Controller
@RequestMapping("/admindetails")
public class AdminController {
	private static final String REDIRECTTOADMINLIST = "redirect:/admindetails/adminlist";

	@Autowired
	private AdminService adminService;

	@GetMapping("/adminlist")
	public String getAllAdminDetailsFromDB(Model model) {
		List<Admin> admin = adminService.getAdmin();
		model.addAttribute("getalladmindetails", admin);
		return "admin-list";
	}

	@GetMapping("/getadmindetailsbyid")
	public String getAdminDetailsById(@RequestParam("adminid") int id, Model model) {
		Admin admin = adminService.findByid(id);
		model.addAttribute("getadmindetailsbyid", admin);
		return "findby-admid";
	}

	@GetMapping("/deleteadmindetailsbyid")
	public String deleteAdminDetailsbyid(@RequestParam("adminid") int id) {
		adminService.deleteById(id);
		return REDIRECTTOADMINLIST;
	}

	@GetMapping("/addadmindetailsbyuser")
	public String showAddAdminForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("addadmindetail", admin);
		return "add-admin-details";
	}

	@PostMapping("/addadmin")
	public String addNewAdminDetails(@Valid @ModelAttribute("addadmindetail") Admin admin, Errors errors) {
		if (errors.hasErrors()) {
			return "add-admin-details";
		} else {
			adminService.save(admin);
			return REDIRECTTOADMINLIST;
		}
	}

	@GetMapping("/updateadmindetails")
	public String showUpdateAdminForm(@RequestParam("adminid") int id, Model model) {
		Admin admin = adminService.findByid(id);
		model.addAttribute("updateadmindetails", admin);
		return "update-admindetails";
	}

	@PostMapping("/updateadmin")
	public String updateAdminDetails(@Valid @ModelAttribute("updateadmindetails") Admin adm, Errors errors) {
		if (errors.hasErrors()) {
			return "update-admindetails";
		} else {
			adminService.save(adm);
			return REDIRECTTOADMINLIST;
		}
	}

//	Get and PostMapping for Admin Login checking
	@GetMapping("/adminlogin")
	public String adminAccessForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("adminlogindetails", admin);
		return "admin-loginform";
	}

	@PostMapping("/checkadminlogin")
	public String checkingAccess(@ModelAttribute("adminlogindetails") Admin admin, Model model) {
		Admin adm = adminService.getAdminByIDAndPassword(admin.getAdminID(),admin.getAdminPassword());
		if (adm != null) {
			return "redirect:/admindetails/adminindex";
		}

		else {
			return "redirect-adminloginpage";
		}
	}

	@GetMapping("/adminindex")
	public String index(Model model) {
		return "admin-indexpage";
	}
}