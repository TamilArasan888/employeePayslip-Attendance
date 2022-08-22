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
	
	public static int findEmployeeAttendance(List<Attendance>attendancelist,int employeeId) {
		int noOfDaysPresent=0;
		Iterator<Attendance> itr=attendancelist.iterator();
		while(itr.hasNext()) {
			Attendance attendance=itr.next();
			if(attendance.getEmployeeID()==employeeId) {
				noOfDaysPresent+=1;
			}	
		}
		return noOfDaysPresent;
	}
	
	public static int getCutSalaryPercent(Date[] array) {
		String startDate=array[0]+"";
		String endDate=array[1]+"";
		
		String[] startDateArray=startDate.split("-");
		String[] endDateArray=endDate.split("-");
		
		int day1=Integer.parseInt(startDateArray[2]);
		int day2=Integer.parseInt(endDateArray[2]);
		
		return day2-day1+1;
	}
	
	public static float netSalaryCalculation(float grossSalary,Optional<BasicSalary> basicSal,int totalNoOfDays,int noOfPresents) {
		BasicSalary basicSalary=basicSal.get();
		double cutSalary=grossSalary/totalNoOfDays;
		double cutPF=basicSalary.getProvidentFund()/totalNoOfDays;
		double total=cutSalary*noOfPresents;
		double totalPF=cutPF*noOfPresents;
		float net=(float)(total-totalPF);
		float incomeTax=net*basicSalary.getIncomeTax()/100;
		return net-incomeTax;
	}
	
	public static Date[] fromDateCalculation(Date payslipDate) {
		String stringDate=payslipDate+"";
		String []dateArray=stringDate.split("-");
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
			// not in use
			
		}
		Date[] startEndDate=new Date[2];
		startEndDate[0]=startdate;
		startEndDate[1]=enddate;
		
		return startEndDate;
	}
}
