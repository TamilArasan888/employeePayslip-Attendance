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

import com.chainsys.emppayslipattend.model.EmployeeDetails;
import com.chainsys.emppayslipattend.service.EmployeeDetailsService;

@Controller
@RequestMapping("/employeedetails")
public class EmployeeDetailsController {

	@Autowired
	private EmployeeDetailsService employeeDetailsService;

	@GetMapping("/emplist")
	public String getEmployeeDetails(Model model) {
		List<EmployeeDetails> theEmp = employeeDetailsService.getEmployeeDetails();
		model.addAttribute("allemployeedetails", theEmp);
		return "list-emp";
	}

	@GetMapping("/getempbyid")
	public String getEmpDetails(@RequestParam("id") int id, Model model) {
		EmployeeDetails theEmp = employeeDetailsService.findByid(id);
		model.addAttribute("getemp", theEmp);
		return "findby-empid";
	}

	@GetMapping("/deleteemp")
	public String deleteEmployeeDetails(@RequestParam("empid") int id) {
		employeeDetailsService.deleteById(id);
		return "redirect:/employeedetails/emplist";
	}

	@GetMapping("/addempdetails")
	public String showAddForm(Model model) {
		EmployeeDetails theEmp = new EmployeeDetails();
		model.addAttribute("addempdetail", theEmp);
		return "add-emp-form";
	}

	@PostMapping("/addemp")
	public String addNewEmployeeDetails(@ModelAttribute("addempdetail") EmployeeDetails theEmp) {
		employeeDetailsService.save(theEmp);
		return "redirect:/employeedetails/emplist";
	}

	@GetMapping("/updateempdetails")
	public String showUpdateEmpForm(@RequestParam("empid") int id, Model model) {
		EmployeeDetails theEmp = employeeDetailsService.findByid(id);
		model.addAttribute("updateempdetails", theEmp);
		return "update-empdetails";
	}

	@PostMapping("/updateemp")
	public String updateEmpDetails(@ModelAttribute("updateempdetails") EmployeeDetails theEmp) {
		employeeDetailsService.save(theEmp);
		return "redirect:/employeedetails/emplist";
	}

}
