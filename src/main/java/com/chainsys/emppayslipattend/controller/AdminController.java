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
	public String getAdminDetailsById(@RequestParam("adminid") int id, Model model) {
		Admin admin = adminService.findByid(id);
		model.addAttribute("getadmindetailsbyid", admin);
		return "findby-admid";
	}

	@GetMapping("/deleteadmindetailsbyid")
	public String deleteAdminDetailsbyid(@RequestParam("adminid") int id) {
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
	public String showUpdateAdminForm(@RequestParam("adminid") int id, Model model) {
		Admin admin = adminService.findByid(id);
		model.addAttribute("updateadmindetails", admin);
		return "update-admindetails";
	}

	@PostMapping("/updateadmin")
	public String updateAdminDetails(@ModelAttribute("updateadmindetails") Admin admin) {
		adminService.save(admin);
		return "redirect:/admindetails/adminlist";
	}
	
	@GetMapping("/adminlogin")
    public String adminAccessForm(Model model) {
        Admin admin = new Admin();
        model.addAttribute("adminlogindetails", admin);
        return "admin-loginform";
    }                   

    @PostMapping("/checkadminlogin")
    public String checkingAccess(@ModelAttribute("adminlogindetails") Admin admin) {
        Admin adm = adminService.getAdminByIDNameAndPassword(admin.getAdminID(),admin.getAdminName(),admin.getAdminPassword());
        if (adm!= null){

            return "redirect:/admindetails/adminindex";
        } else
            return "redirect-adminloginpage";
    }
    
    @GetMapping("/adminindex")
    public String index(Model model) {
        return "admin-indexpage";
    } 
	
}