package com.smd.service;

import com.smd.model.BestCustomers;
import com.smd.model.Customer;
import com.smd.model.OrderSummary;
import com.smd.model.PaySummary;

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
	
	//admin update customer Details to the database
	public boolean updateCustomerfromAdmin(Customer customer);
	
	//customer update customer Details
	public boolean updatedCustomer(Customer customer);
	
	//activate customer Details
	public boolean setActive(String id);
	
	//deactivate customer
	public boolean setInactive(Customer customer);
	
	//delete customer
	public boolean deleteCustomer(String id);
	
	//search hardware
	public Customer[] search(String search);
	
	//update password from forget password
	public boolean updatePassword(int id, String pwd);
	
	//get order Summary
	public OrderSummary[] getOrderDetails(int id);
	
	//get customer payment summary
	public PaySummary[] getPaymentDetails(int id);
	
	//get best customer details
	public BestCustomers[] getBestCus();
}
