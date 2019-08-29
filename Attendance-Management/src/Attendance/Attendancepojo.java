package Attendance;

import java.sql.Date;

public class Attendancepojo {
	int Empid;
	public int getEmpid() {
		return Empid;
	}
	public void setEmpid(int empid) {
		Empid = empid;
	}
	
	
	public String getIntime() {
		return Intime;
	}
	public void setIntime(String intime) {
		Intime = intime;
	}
	public String getOuttime() {
		return Outtime;
	}
	public void setOuttime(String outtime) {
		Outtime = outtime;
	}
	int Day;
	public int getDay() {
		return Day;
	}
	public void setDay(int day) {
		Day = day;
	}
	String Intime;
	String Outtime;

}
