package com.smd.service;

import com.smd.model.Customer;

public interface ICustomerDetails {
	//get all customer details
	public Customer[] getCustomerDetails();
	
	//get all active customers in the system
	public Customer[] activeCustomers();
	
	//getting the total active customers
	public int getActiveCustomerCount();
	
	//get all inactive customers in the system
	public Customer[] inactiveCustomers();
	
	//getting the total inactive customers
	public int getInactiveCustomerCount();
	
	//get customer by customer ID
	public Customer getCustomerById(int id);
	
	//add customer detail to the database
	public boolean addCustomer(Customer customer);
	
	//update customer Details to the system
	public boolean updateCustomerfromAdmin(Customer customer);
	
	//activate customer Details
	public boolean setActive(String id);
	
	//deactivate customer
	public boolean setInactive(Customer customer);
	
	//delete customer
	public boolean deleteCustomer(String id);
	
	//search hardware
	public Customer[] search(String search);
	
	//update password from forget password
	public boolean updateForgetPassword(int id, String pwd);
	
//	//check if email exist in the system
//	public boolean checkEmail(Customer customer);
		
	

//	
//	//update user details from the customer profile
//	public boolean updateUserProfile(Customer customer);
		
}
