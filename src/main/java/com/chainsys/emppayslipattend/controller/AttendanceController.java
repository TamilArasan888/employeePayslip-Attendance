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

import com.chainsys.emppayslipattend.model.Attendance;
import com.chainsys.emppayslipattend.service.AttendanceService;

@Controller
@RequestMapping("/attendancedetails")
public class AttendanceController {

		@Autowired
		private AttendanceService attendService;

		@GetMapping("/attendlist")
		public String getAttendance(Model model) {
			List<Attendance> atten = attendService.getAttendance();
			model.addAttribute("allattendancedetails", atten);
			return "list-attend";
		}

		@GetMapping("/getattendbyid")
		public String getAttendDetails(@RequestParam("id") int id, Model model) {
			Attendance atten = attendService.findByid(id);
			model.addAttribute("getattend", atten);
			return "findby-attendid";
		}

		@GetMapping("/deleteattendance")
		public String deleteAttendanceDetails(@RequestParam("attendid") int id) {
			attendService.deleteById(id);
			return "redirect:/attendancedetails/attendlist";
		}

		@GetMapping("/addattenddetails")
		public String showAddForm(Model model) {
			Attendance atten = new Attendance();
			model.addAttribute("addattenddetail", atten);
			return "add-attend-form";
		}

		@PostMapping("/addattend")
		public String addNewAttendDetails(@ModelAttribute("addattenddetail") Attendance atten) {
			attendService.save(atten);
			return "redirect:/attendancedetails/attendlist";
		}

		@GetMapping("/updateattenddetails")
		public String showUpdateAttendForm(@RequestParam("attendid") int id, Model model) {
			Attendance atten = attendService.findByid(id);
			model.addAttribute("updateattenddetails", atten);
			return "update-attenddetails";
		}

		@PostMapping("/updateattend")
		public String updateAttendDetails(@ModelAttribute("updateattenddetails") Attendance atten) {
			attendService.save(atten);
			return "redirect:/attendancedetails/attendlist";
		}

}
