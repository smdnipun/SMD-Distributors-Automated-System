package com.smd.service;

import com.smd.model.Customer;

public interface ICustomerDetails {
	//get all customer details
	public Customer[] getCustomerDetails();
	
	//get all active customers in the system
	public Customer[] activeCustomers();
	
	//get all inactive customers in the system
	public Customer[] inactiveCustomers();
	
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
	
//	//check if email exist in the system
//	public boolean checkEmail(Customer customer);
		
	
//	//update password from forget password
//	public boolean updateForgetPassword(Customer customer);
//	
//	//update user details from the customer profile
//	public boolean updateUserProfile(Customer customer);
		
}
