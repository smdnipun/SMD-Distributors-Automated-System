package com.smd.model;

public class EmployeeBasicInfo {

	private String Employee_Type ;
	private double Basic_Salary;
	private int Hours;
	private double OT_Rate ;
	
	
	//get employee basic information details from EmployeeDBUtil class list array method 
	
	public EmployeeBasicInfo(String employee_Type, double basic_Salary, int hours, double oT_Rate) {
		super();
		Employee_Type = employee_Type;
		Basic_Salary = basic_Salary;
		Hours = hours;
		OT_Rate = oT_Rate;
	}

	
	//getters

	public String getEmployee_Type() {
		return Employee_Type;
	}


	public double getBasic_Salary() {
		return Basic_Salary;
	}


	public int getHours() {
		return Hours;
	}


	public double getOT_Rate() {
		return OT_Rate;
	}



	
	
	
	
	
	
	
}
