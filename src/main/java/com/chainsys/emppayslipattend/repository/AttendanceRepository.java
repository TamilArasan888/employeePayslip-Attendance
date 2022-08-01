package com.chainsys.emppayslipattend.repository;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.emppayslipattend.model.Attendance;

import java.util.List;

public interface AttendanceRepository extends CrudRepository<Attendance,Integer>  {
	Attendance findById(int atten_Id);
	Attendance save(Attendance attend); 
    void deleteById(int atten_Id);
    List<Attendance> findAll();
}

