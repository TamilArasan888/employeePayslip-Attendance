package com.chainsys.emppayslipattend.repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.emppayslipattend.model.Attendance;

import java.sql.Date;
import java.util.List;

public interface AttendanceRepository extends CrudRepository<Attendance,Integer>  {
	Attendance findById(int atten_Id);
	Attendance save(Attendance attend); 
    void deleteById(int atten_Id);
    List<Attendance> findAll();
    List<Attendance> findByEmployeeID(int id);
//    @Query(value="select * from Attendance a where(attend_Date between a.)")
//    List<Attendance> getAttendanceByNativeSQL(Date date1,Date date2);
    
    List<Attendance> findByAttendanceDateGreaterThanEqualAndAttendanceDateLessThanEqual(Date startDate,Date endDate);
}

