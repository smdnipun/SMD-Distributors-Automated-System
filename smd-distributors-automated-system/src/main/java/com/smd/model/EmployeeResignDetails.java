package com.smd.model;

public class EmployeeResignDetails {
	
	
	private int Emp_ID;
	private String Employee_Type ;
	private String First_Name;
	private String Last_Name;
	private String Phone;
	private String NIC;
	private String Address ;
	private String Resigned_Date ;
	
	
	//get employee resign details from EmployeeDBUtil class list array method 
	
	public EmployeeResignDetails(int emp_ID, String employee_Type, String first_Name, String last_Name, String phone,
			String nIC, String address, String resigned_Date) {
	
		Emp_ID = emp_ID;
		Employee_Type = employee_Type;
		First_Name = first_Name;
		Last_Name = last_Name;
		Phone = phone;
		NIC = nIC;
		Address = address;
		Resigned_Date = resigned_Date;
	}


	//getters
	
	public int getEmp_ID() {
		return Emp_ID;
	}



	public String getEmployee_Type() {
		return Employee_Type;
	}



	public String getFirst_Name() {
		return First_Name;
	}


	public String getLast_Name() {
		return Last_Name;
	}



	public String getPhone() {
		return Phone;
	}


	public String getNIC() {
		return NIC;
	}



	public String getAddress() {
		return Address;
	}


	public String getResigned_Date() {
		return Resigned_Date;
	}



	
	
	
	
	

}
