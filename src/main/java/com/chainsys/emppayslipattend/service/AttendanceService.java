package com.chainsys.emppayslipattend.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.emppayslipattend.model.Attendance;
import com.chainsys.emppayslipattend.repository.AttendanceRepository;

@Service
public class AttendanceService {

	@Autowired
	private AttendanceRepository attendanceRepository;

	public Attendance findByid(int id) {
		return attendanceRepository.findById(id);
	}

	public Attendance save(Attendance atten) {
		return attendanceRepository.save(atten);
	}

	@Transactional
	public void deleteById(int atten_id) {
		attendanceRepository.deleteById(atten_id);
	}

	public List<Attendance> getAttendance() {
		List<Attendance> listAttend = attendanceRepository.findAll();
		return listAttend;
	}
	public List<Attendance> getAttendenceByEmployeeId(int id){
		return attendanceRepository.findByEmployeeID(id);
	}
	public List<Attendance> getAttendanceBetweenTwoDates(Date startdate,Date endDate){
		return attendanceRepository.findByAttendanceDateGreaterThanEqualAndAttendanceDateLessThanEqual(startdate, endDate);
	}

}
