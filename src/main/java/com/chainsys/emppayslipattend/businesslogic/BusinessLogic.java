package com.chainsys.emppayslipattend.businesslogic;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import com.chainsys.emppayslipattend.model.Attendance;
import com.chainsys.emppayslipattend.model.BasicSalary;

public class BusinessLogic {
	private BusinessLogic() {
		
	}
	public static float grossSalaryCalculation(Optional<BasicSalary> basicSal) {
		BasicSalary basicSalary=basicSal.get();
		return basicSalary.getEmployeeBasicSalary()+basicSalary.getHouseRentAllowance()+basicSalary.getDailyAllowance();
	}
	public static float netSalaryCalculation(float grossSalary,Optional<BasicSalary> basicSal,float cutSalaryPercent) {
		BasicSalary basicSalary=basicSal.get();
		float cutSalary=grossSalary*cutSalaryPercent;
		System.out.println(cutSalary);
		return grossSalary-basicSalary.getProvidentFund()-(grossSalary*basicSalary.getIncomeTax()/100)-cutSalary;
	}
	
	
	public static float getCutSalaryPercent(Date[] array,int noOfPresent) {
		String startdate=array[0]+"";
		String endDate=array[1]+"";
		String[] startdateArray=startdate.split("-");
		String[] enddateArray=endDate.split("-");
		int day1=Integer.parseInt(startdateArray[2]);
		int day2=Integer.parseInt(enddateArray[2]);
		int totalDays=day2-day1+1;
		return (totalDays-noOfPresent)/totalDays;
	}
	
	
	public static Date[] fromDateCalculation(Date payslipDate) {
		String stringDate=payslipDate+"";
		String dateArray[]=stringDate.split("-");
		int month=Integer.parseInt(dateArray[1]);
		int year=Integer.parseInt(dateArray[0]);
		if(month>1) {
		  month-=1;
		}else { 
			month=12;
			year-=1;
		}
		String startDateString="01"+"/"+month+"/"+year;
		
		String endDate=null;
		if(month==1||month==3|| month==5|| month==7||month==8|| month==10|| month==12) {
			endDate="31"+"/"+month+"/"+year;
		}
		else if(month==4||month==6|| month==9|| month==11) {
			endDate="30"+"/"+month+"/"+year;
		}
		else {
			if(year%4==0) {
				endDate="29"+"/"+month+"/"+year;
			}
			else
				endDate="28"+"/"+month+"/"+year;
		}
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
		Date startdate=null;
		Date enddate=null;
		try {
			java.util.Date date1=simpleDateFormat.parse(startDateString);
			java.util.Date date2=simpleDateFormat.parse(endDate);
			startdate=new java.sql.Date(date1.getTime());
			enddate=new java.sql.Date(date2.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Date sartEndDate[]=new Date[2];
		sartEndDate[0]=startdate;
		sartEndDate[1]=enddate;
		
		return sartEndDate;
	}
	
	
	public static int findemployeeAttendance(List<Attendance>attendancelist,int employeeId) {
		int noOfPresent=0;
		Iterator<Attendance> itr=attendancelist.iterator();
		while(itr.hasNext()) {
			Attendance attendance=(Attendance)itr.next();
			if(attendance.getEmployeeID()==employeeId) {
				noOfPresent+=1;
			}	
		}
		return noOfPresent;
	}
//	public static void main(String[] args) {
//		SimpleDateFormat SimpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
//		String startDateString="12/03/2022";
//		try {
//		java.util.Date date1=SimpleDateFormat.parse(startDateString);
//		Date startdate=new java.sql.Date(date1.getTime());
//		Date [] array=fromDateCalculation(startdate);
//		System.out.println(array[0]);
//		System.out.println(array[1]);
//		System.out.println(noOfDaysLeave(array,20));
//		} catch (ParseException e) {
//			System.out.println("somthing");
//			e.printStackTrace();
//		}
//	}
	
}
