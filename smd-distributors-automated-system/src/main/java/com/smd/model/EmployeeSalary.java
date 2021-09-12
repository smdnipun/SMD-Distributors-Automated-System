package com.smd.model;

public class EmployeeSalary {
	
	
	private String Employee_Type ;
	private String First_Name;
	private double BasicSalary;
	private double TotalSalary;
	private double OT_Increement ;
	private int Work_Hours;
	private int Hours_worked ;
	private double OT_Rate;
	private String Month ;
	
	
	//get employee salary details from EmployeeDBUtil class list method 
	
	public EmployeeSalary(String employee_Type, String first_Name, double basicSalary, double totalSalary,
			double oT_Increement, int work_Hours, int hours_worked, double oT_Rate, String month) {
		super();
		Employee_Type = employee_Type;
		First_Name = first_Name;
		BasicSalary = basicSalary;
		TotalSalary = totalSalary;
		OT_Increement = oT_Increement;
		Work_Hours = work_Hours;
		Hours_worked = hours_worked;
		OT_Rate = oT_Rate;
		Month = month;
	}


	//getters

	public String getEmployee_Type() {
		return Employee_Type;
	}


	public String getFirst_Name() {
		return First_Name;
	}


	public double getBasicSalary() {
		return BasicSalary;
	}


	public double getTotalSalary() {
		return TotalSalary;
	}



	public double getOT_Increement() {
		return OT_Increement;
	}


	public int getWork_Hours() {
		return Work_Hours;
	}


	public int getHours_worked() {
		return Hours_worked;
	}


	public double getOT_Rate() {
		return OT_Rate;
	}


	public String getMonth() {
		return Month;
	}






	
}
	
	
