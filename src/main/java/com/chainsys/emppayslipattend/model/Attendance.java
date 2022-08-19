package com.chainsys.emppayslipattend.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="Attendance")
public class Attendance {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "attendance_id_reference")
	@SequenceGenerator(name="attendance_id_reference",sequenceName = "attendance_id_reference",allocationSize = 1)
	@Column(name="attendance_Id")
	private int attendanceID;
	
	@Column(name="attend_Date")
	private Date attendanceDate;
	
	@Column(name="in_Time")
	private String inTime;
	
	@Column(name="out_Time")
	private String outTime;
	
	@Column(name="daily_Task")
	private String dailyTask;
	
	@Column(name="emp_Id")
	private int employeeID;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "emp_Id", nullable = false, insertable = false, updatable = false)
	private EmployeeDetails employeeDetails;

	public int getAttendanceID() {
		return attendanceID;
	}

	public void setAttendanceID(int attendanceID) {
		this.attendanceID = attendanceID;
	}

	public Date getAttendanceDate() {
		return attendanceDate;
	}

	public void setAttendanceDate(Date attendanceDate) {
		this.attendanceDate = attendanceDate;
	}

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public String getOutTime() {
		return outTime;
	}

	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}

	public String getDailyTask() {
		return dailyTask;
	}

	public void setDailyTask(String dailyTask) {
		this.dailyTask = dailyTask;
	}

	public int getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}
	
	
}

