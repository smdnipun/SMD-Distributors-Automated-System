package com.smd.model;

public class Employee {
	private int Emp_ID;
	private String First_Name;
	private String Last_Name;
	private String Phone;
	private String Username;
	private String Password;
	private String NIC;
	private String Email;
	private String Address;
	private String Emp_Type;
	
	
	//get employee details from EmployeeDBUtil class list array method 
	
	public Employee(int emp_ID, String first_Name, String last_Name, String phone, String username, String password,
			String nIC, String email, String address,String emp_Type) {

		Emp_ID = emp_ID;
		First_Name = first_Name;
		Last_Name = last_Name;
		Phone = phone;
		Username = username;
		Password = password;
		NIC = nIC;
		Email = email;
		Address = address;
		Emp_Type = emp_Type;
	}


	//getters
	
	public int getEmp_ID() {
		return Emp_ID;
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




	public String getUsername() {
		return Username;
	}




	public String getPassword() {
		return Password;
	}




	public String getNIC() {
		return NIC;
	}




	public String getEmail() {
		return Email;
	}



	public String getAddress() {
		return Address;
	}


	
	public String getEmp_Type() {
		return Emp_Type;
	}



	
}
