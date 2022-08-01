package com.chainsys.emppayslipattend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.emppayslipattend.model.Attendance;
import com.chainsys.emppayslipattend.repository.AttendanceRepository;

@Service
public class AttendanceService {

	@Autowired
	private AttendanceRepository attendanceReposit;

	public Attendance findByid(int id) {
		return attendanceReposit.findById(id);
	}

	public Attendance save(Attendance atten) {
		return attendanceReposit.save(atten);
	}

	@Transactional
	public void deleteById(int atten_id) {
		attendanceReposit.deleteById(atten_id);
	}

	public List<Attendance> getAttendance() {
		List<Attendance> listAttend = attendanceReposit.findAll();
		return listAttend;
	}

}
