package com.chainsys.emppayslipattend.model;

import java.sql.Date;
import java.sql.Timestamp;
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
	@Column(name="attendance_Id")
	private int attendanceID;
	
	@Column(name="attend_Date")
	private Date attendanceDate;
	
	@Column(name="in_Time")
	private Timestamp inTime;
	
	@Column(name="out_Time")
	private Timestamp outTime;
	
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

	public Timestamp getInTime() {
		return inTime;
	}

	public void setInTime(Timestamp inTime) {
		this.inTime = inTime;
	}

	public Timestamp getOutTime() {
		return outTime;
	}

	public void setOutTime(Timestamp outTime) {
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

