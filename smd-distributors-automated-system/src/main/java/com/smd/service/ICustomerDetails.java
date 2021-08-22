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
	
//	//update customer Details to the system
//	public boolean updateCustomerfromAdmin(Customer customer);
//	
//	//update password from forget password
//	public boolean updateForgetPassword(Customer customer);
//	
//	//update user details from the customer profile
//	public boolean updateUserProfile(Customer customer);
	
	//Delete customer Details
	public boolean setStatus();
}
