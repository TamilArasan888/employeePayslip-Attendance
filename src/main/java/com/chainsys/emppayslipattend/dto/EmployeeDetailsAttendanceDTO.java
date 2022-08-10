package com.chainsys.emppayslipattend.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.emppayslipattend.model.Attendance;
import com.chainsys.emppayslipattend.model.EmployeeDetails;

public class EmployeeDetailsAttendanceDTO {
	
	private EmployeeDetails employeeDetails;
	private List<Attendance> attendanceList = new ArrayList<Attendance>();

	public EmployeeDetails getEmployeeDetails() {
		return employeeDetails;
	}

	public void setEmployeeDetails(EmployeeDetails employeeDetails) {
		this.employeeDetails = employeeDetails;
	}

	public void addAttendance(Attendance attendance) {
		attendanceList.add(attendance);
	}

	public List<Attendance> getAttendanceList() {
		return attendanceList;
	}

}
