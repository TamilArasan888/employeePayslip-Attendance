package com.chainsys.emppayslipattend.repository;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.emppayslipattend.model.Attendance;

import java.sql.Date;
import java.util.List;

public interface AttendanceRepository extends CrudRepository<Attendance,Integer>  {
	Attendance findById(int attenId);
	Attendance save(Attendance attend); 
    void deleteById(int attenId);
    List<Attendance> findAll();
    List<Attendance> findByEmployeeID(int id);
    List<Attendance> findByAttendanceDateGreaterThanEqualAndAttendanceDateLessThanEqual(Date startDate,Date endDate);
    List<Attendance> findByEmployeeIDOrderByAttendanceDateDesc(int empId);
}

