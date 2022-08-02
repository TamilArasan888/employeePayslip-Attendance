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
		private AttendanceService attendanceService;

		@GetMapping("/attendancelist")
		public String getAttendance(Model model) {
			List<Attendance> attendance = attendanceService.getAttendance();
			model.addAttribute("allattendancedetails", attendance);
			return "list-attend";
		}

		@GetMapping("/findattendancebyid")
		public String getAttendDetails(@RequestParam("attendanceid") int id, Model model) {
			Attendance attendance= attendanceService.findByid(id);
			model.addAttribute("getattendance", attendance);
			return "findby-attendid";
		}

		@GetMapping("/deleteattendancebyid")
		public String deleteAttendanceDetails(@RequestParam("attendanceid") int id) {
			attendanceService.deleteById(id);
			return "redirect:/attendancedetails/attendancelist";
		}

		@GetMapping("/addattendancedetails")
		public String showAddForm(Model model) {
			Attendance attendance = new Attendance();
			model.addAttribute("addattendancedetail", attendance);
			return "add-attend-form";
		}

		@PostMapping("/addattendance")
		public String addNewAttendDetails(@ModelAttribute("addattendancedetail") Attendance attendance) {
			attendanceService.save(attendance);
			return "redirect:/attendancedetails/attendancelist";
		}

		@GetMapping("/updateattendancedetails")
		public String showUpdateAttendForm(@RequestParam("attendanceid") int id, Model model) {
			Attendance attendance = attendanceService.findByid(id);
			model.addAttribute("updateattendancedetails", attendance);
			return "update-attenddetails";
		}

		@PostMapping("/updateattendance")
		public String updateAttendDetails(@ModelAttribute("updateattendancedetails") Attendance attendance) {
			attendanceService.save(attendance);
			return "redirect:/attendancedetails/attendancelist";
		}

}
