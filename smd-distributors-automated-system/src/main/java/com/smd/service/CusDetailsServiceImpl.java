package com.smd.service;
import com.smd.util.DBConnection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import com.smd.model.Customer;

public class CusDetailsServiceImpl implements ICustomerDetails {
	
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
						rs.getString(6),	//password
						rs.getString(7),	//nic
						rs.getString(8),	//email
						rs.getString(9),	//address
						rs.getString(10)	//status
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
						rs.getString(6),	//password
						rs.getString(7),	//nic
						rs.getString(8),	//email
						rs.getString(9),	//address
						rs.getString(10)	//status
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
						rs.getString(6),	//password
						rs.getString(7),	//nic
						rs.getString(8),	//email
						rs.getString(9),	//address
						rs.getString(10)	//status
						);
				ll.add(c);
			}
			//Inserting the value in the LinkList to the array
			array = ll.toArray(new Customer[ll.size()]);

		} catch (Exception e) {}
		
		return array;
	}
	
	public boolean addCustomer(Customer customer) {
		boolean Success = false;//assign this to false before execution of query
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command = "insert into customer(First_Name,Last_Name,Hardware_Name,Phone,Password,NIC,Email,Address,Status)"
					+ "VALUES('" + customer.getFname() + "','" + customer.getLname() + "','" + customer.getHardwareName() + "','" + customer.getPhoneNo() + "','" + customer.getPassword() + "','" + customer.getNIC() + "','" + customer.getEmail() + "','" + customer.getAddress() + "','" + "Active" + "')";
			
			int result = stmt.executeUpdate(command);
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else
				//insertion is unsuccessful
				Success=false;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return Success;
	}
	
	public void setStatus() {
		
	}

}
