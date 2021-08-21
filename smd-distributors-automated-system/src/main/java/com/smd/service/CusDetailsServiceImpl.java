package com.smd.service;
import com.smd.util.DBConnection;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.Customer;

public class CusDetailsServiceImpl {
	
	//Get all the customer details from the Database
	public Customer[] getCustomerDetails() {
		
		//create linked list to take the data from the database.
		List<Customer> ll = new LinkedList<Customer>();
		
		//Created an array to store all the customer details.
		Customer[] array = null;
		
		//Make the connection with Database
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from customer");
			
			//Adding the data retrieved from the database to the LinkList
			while (rs.next()) {
				Customer c = new Customer(
						rs.getString(1),	//cusID
						rs.getString(2), 	//fname
						rs.getString(3),	//lname
						rs.getString(4),	//hardwareName
						rs.getString(5),	//phoneNo
						rs.getString(6),	//username
						rs.getString(7),	//password
						rs.getString(8),	//nic
						rs.getString(9),	//email
						rs.getString(10),	//address
						rs.getString(11)	//status
						);
				ll.add(c);
			}
			//Inserting the value in the LinkList to the array
			array = ll.toArray(new Customer[ll.size()]);

		} catch (Exception e) {}
		
		return array;
	}
	
	//Get all the active customer details from the Database
	public Customer[] activeCustomers() {
		
		//create linked list to take the data from the database.
		List<Customer> ll = new LinkedList<Customer>();
		
		//Created an array to store all the customer details.
		Customer[] array = null;
		
		//Make the connection with Database
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from customer where status='active'");
			
			//Adding the data retrieved from the database to the LinkList
			while (rs.next()) {
				Customer c = new Customer(
						rs.getString(1),	//cusID
						rs.getString(2), 	//fname
						rs.getString(3),	//lname
						rs.getString(4),	//hardwareName
						rs.getString(5),	//phoneNo
						rs.getString(6),	//username
						rs.getString(7),	//password
						rs.getString(8),	//nic
						rs.getString(9),	//email
						rs.getString(10),	//address
						rs.getString(11)	//status
						);
				ll.add(c);
			}
			//Inserting the value in the LinkList to the array
			array = ll.toArray(new Customer[ll.size()]);

		} catch (Exception e) {}
		
		return array;
	}
	
	//Get all the inactive customer details from the Database
	public Customer[] inactiveCustomers() {
		
		//create linked list to take the data from the database.
		List<Customer> ll = new LinkedList<Customer>();
		
		//Created an array to store all the customer details.
		Customer[] array = null;
		
		//Make the connection with Database
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from customer where status='inactive'");
			
			//Adding the data retrieved from the database to the LinkList
			while (rs.next()) {
				Customer c = new Customer(
						rs.getString(1),	//cusID
						rs.getString(2), 	//fname
						rs.getString(3),	//lname
						rs.getString(4),	//hardwareName
						rs.getString(5),	//phoneNo
						rs.getString(6),	//username
						rs.getString(7),	//password
						rs.getString(8),	//nic
						rs.getString(9),	//email
						rs.getString(10),	//address
						rs.getString(11)	//status
						);
				ll.add(c);
			}
			//Inserting the value in the LinkList to the array
			array = ll.toArray(new Customer[ll.size()]);

		} catch (Exception e) {}
		
		return array;
	}
	
	public void activateCustomer() {
		
	}
}
