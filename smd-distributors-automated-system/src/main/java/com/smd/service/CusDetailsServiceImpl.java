package com.smd.service;
import com.smd.util.DBConnection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.Customer;

public class CusDetailsServiceImpl implements ICustomerDetails {
	
	@Override
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
	
	@Override
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
	
	@Override
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
	
	@Override
	//Add new customer to the database
	public boolean addCustomer(Customer customer) {
		boolean Success = false;//assigning false before execution
		
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
			e.printStackTrace();
		} 
		
		return Success;
	}
	
	@Override
	//update the status of the customer
	public boolean setActive(String id) {
		boolean Success = false;//assign false before execution
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command =  "UPDATE customer SET status = 'Active' where Cus_ID =" + id;
			int result = stmt.executeUpdate(command);
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else
				//insertion is unsuccessful
				Success=false;
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return Success;
	}
	
	@Override
	//update the status of the customer
	public boolean setInactive(Customer customer) {
		boolean Success = false;// assign false before execution
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command =  "UPDATE customer SET status = 'Inactive' where Cus_ID =" + customer.getCusID();
			int result = stmt.executeUpdate(command);
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else
				//insertion is unsuccessful
				Success=false;
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return Success;
	}

	@Override
	//update user details from admin
	public boolean updateCustomerfromAdmin(Customer customer) {
		boolean Success = false;//assign false before execution
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command = "UPDATE customer SET First_name= '" + customer.getFname() + "', Last_Name= '" + customer.getLname() + "', Hardware_Name= '"+ customer.getHardwareName() +"', Phone= '"+ customer.getPhoneNo() +"', NIC= '" + customer.getNIC() + "', Email= '"+ customer.getEmail() + "', Address= '" + customer.getAddress() + "' where Cus_ID = " + customer.getCusID();      
			
			int result = stmt.executeUpdate(command);
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else
				//insertion is unsuccessful
				Success=false;
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return Success;
	}

	@Override
	//delete customer
	public boolean deleteCustomer(String id) {
		boolean Success = false;// assign false before execution
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command =  "delete from customer where Cus_ID = " + id ;
			int result = stmt.executeUpdate(command);
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else
				//insertion is unsuccessful
				Success=false;
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return Success;
	}
	
//	public boolean checkEmail(Customer customer) {
//		boolean Success = false;//assign false before execution
//		DBConnection dbc = new DBConnection();
//		try {
//			Statement stmt = dbc.getConnection().createStatement();
//			
//			String command = "select count(email) form customer where email = '" + customer.getEmail() +"'";
//			
//			int result = stmt.executeUpdate(command);
//			System.out.println(result);
//			
//			if(result < 2) {
//				//insertion is successful if result is 1
//				Success=true;
//			}
//			else
//				//insertion is unsuccessful
//				Success=false;
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		} 
//		return Success;
//	}

}
