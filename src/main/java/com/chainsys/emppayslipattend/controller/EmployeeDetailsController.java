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

import com.chainsys.emppayslipattend.dto.EmployeeDetailsAttendanceDTO;
import com.chainsys.emppayslipattend.dto.EmployeeDetailsPayslipDTO;
import com.chainsys.emppayslipattend.model.BasicSalary;
import com.chainsys.emppayslipattend.model.EmployeeDetails;
import com.chainsys.emppayslipattend.service.EmployeeDetailsService;

@Controller
@RequestMapping("/employeedetails")
public class EmployeeDetailsController {

	@Autowired
	private EmployeeDetailsService employeeDetailsService;

	@GetMapping("/employeelist")
	public String getEmployeeDetails(Model model) {
		List<EmployeeDetails> employee = employeeDetailsService.getEmployeeDetails();
		model.addAttribute("allemployeedetails", employee);
		return "list-emp";
	}

	@GetMapping("/findemployeebyid")
	public String getEmpDetails(@RequestParam("employeeid") int id, Model model) {
		EmployeeDetails employee = employeeDetailsService.findById(id);
		model.addAttribute("getemployeebyid", employee);
		return "findby-empid";
	}

	@GetMapping("/deleteemployeebyid")
	public String deleteEmployeeDetails(@RequestParam("employeeid") int id) {
		employeeDetailsService.deleteById(id);
		return "redirect:/employeedetails/employeelist";
	}

	@GetMapping("/addemployeedetails")
	public String showAddForm(Model model) {
		EmployeeDetails employee = new EmployeeDetails();
		model.addAttribute("addemployeedetail", employee);
		List<BasicSalary> basicSalary=employeeDetailsService.getAllBasicSalary();
		model.addAttribute("basicSalary", basicSalary);
		return "add-emp-form";
	}

	@PostMapping("/addemployee")
	public String addNewEmployeeDetails(@ModelAttribute("addempdetail") EmployeeDetails employee) {
		Optional<BasicSalary> basicSalary=employeeDetailsService.getBasicSalaryById(employee.getEmployeeRole());
		employee.setEmpBasicsalary(basicSalary.get().getEmployeeBasicSalary());
		employeeDetailsService.save(employee);
		return "redirect:/employeedetails/employeelist";
	}

	@GetMapping("/updateemployeedetails")
	public String showUpdateEmpForm(@RequestParam("employeeid") int id, Model model) {
		EmployeeDetails employee = employeeDetailsService.findById(id);
		model.addAttribute("updateemployeedetails", employee);
		return "update-empdetails";
	}

	@PostMapping("/updateemployee")
	public String updateEmpDetails(@ModelAttribute("updateempdetails") EmployeeDetails employee) {
		employeeDetailsService.save(employee);
		return "redirect:/employeedetails/employeelist";
	}
	
	@GetMapping("/getemployeepaysliplist")
	public String getEmployeePayslip(@RequestParam("id") int id,Model model) {
		EmployeeDetailsPayslipDTO dto=employeeDetailsService.getEmployeedetailsPayslip(id);
		model.addAttribute("getemployeedetails",dto.getEmployeeDetails());
		model.addAttribute("payslipdetails",dto.getPayslipList());
		return "employeedetails-payslip";
	}
	
	@GetMapping("/getemployeeattendancelist")
	public String getEmployeeattendance(@RequestParam("id") int id,Model model) {
		EmployeeDetailsAttendanceDTO dto=employeeDetailsService.getEmployeedetailsAttendance(id);
		model.addAttribute("getemployeedetails",dto.getEmployeeDetails());
		model.addAttribute("attendancedetails",dto.getAttendanceList());
		return "employeedetails-attendance";
	}
	
	@GetMapping("/employeelogin")
    public String employeeAccessForm(Model model) {
        EmployeeDetails employee = new EmployeeDetails();
        model.addAttribute("employeelogindetails", employee);
        return "employee-loginform";
    }                   

    @PostMapping("/checkemployeelogin")
    public String checkingAccess(@ModelAttribute("employeelogindetails") EmployeeDetails employeeDet) {
        EmployeeDetails employee = employeeDetailsService.getEmployeeByIDEmailAndPassword(employeeDet.getEmployeeID(), employeeDet.getEmployeeEmail(), employeeDet.getEmployeePassword());
        if (employee!= null){
            return "employee-indexpage";
        } else
            return "redirect-employeeloginpage";
    }
    
    @GetMapping("/attendancetype")
    public String index(Model model) {
        return "attendance-type";
    }  

}
