package com.smd.service;
import com.smd.util.DBConnection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.Customer;
import com.smd.model.OrderSummary;
import com.smd.model.PaySummary;
import com.smd.model.Payment;

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
			ResultSet rs = stmt.executeQuery("select * from smd.customer");//execute the statement
			
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

		} catch (Exception e) {
			e.printStackTrace();
		}
		
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
			ResultSet rs = stmt.executeQuery("select * from smd.customer where status='Active'");//execute the statement
			
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

		} catch (Exception e) {
			e.printStackTrace();
		}
		return array;
	}
	
	//getting the total active customers
	public int getActiveCustomerCount() {
		int total=0;
		//creating the database connection
		DBConnection dbc = new DBConnection();
		
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command = "SELECT COUNT(*) FROM smd.customer WHERE status='Active'";
			ResultSet rs = stmt.executeQuery(command);//execute the statement	
			while(rs.next()) {
				total = rs.getInt(1);//get the total rows
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return total;
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
			ResultSet rs = stmt.executeQuery("select * from smd.customer where status='inactive'");//execute the statement
			
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

		} catch (Exception e) {
			e.printStackTrace();
		}
		return array;
	}
	
	//getting the total inactive customers
	public int getInactiveCustomerCount() {
		int total=0;
		//creating the database connection
		DBConnection dbc = new DBConnection();
		
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command = "SELECT COUNT(*) FROM smd.customer WHERE status='Inactive'";
			ResultSet rs = stmt.executeQuery(command);//execute the statement	
			while(rs.next()) {
				total = rs.getInt(1);//get the total rows
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return total;
	}
	
	@Override
	public Customer getCustomerById(int id) {
		//create linked list to take the data from the database.
		List<Customer> ll = new LinkedList<Customer>();
		
		//Created an array to store all the customer details.
		Customer[] array = null;
		
		//Make the connection with Database
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "select * from smd.customer where Cus_ID =" + id;
			ResultSet rs = stmt.executeQuery(command);//execute the statement
			
			//retrieve the data from the specific customer
			while(rs.next()) {
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
				return c;
			}
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	//Add new customer to the database
	public boolean addCustomer(Customer customer) {
		boolean Success = false;//assigning false before execution
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command = "insert into smd.customer(First_Name,Last_Name,Hardware_Name,Phone,Password,NIC,Email,Address,Status)"
					+ "VALUES('" + customer.getFname() + "','" + customer.getLname() + "','" + customer.getHardwareName() + "','" + customer.getPhoneNo() + "','" + customer.getPassword() + "','" + customer.getNIC() + "','" + customer.getEmail() + "','" + customer.getAddress() + "','" + "Active" + "')";
	
			int result = stmt.executeUpdate(command);//execute the statement
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else {
				//insertion is unsuccessful
				Success=false;
			}
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
			
			String command =  "UPDATE smd.customer SET status = 'Active' where Cus_ID =" + id;
			int result = stmt.executeUpdate(command);//execute the statement
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else {
				//insertion is unsuccessful
				Success=false;
			}
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
			
			String command =  "UPDATE smd.customer SET status = 'Inactive' where Cus_ID =" + customer.getCusID();
			int result = stmt.executeUpdate(command);//execute the statement
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else {
				//insertion is unsuccessful
				Success=false;
			}
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
			
			String command = "UPDATE smd.customer SET First_name= '" + customer.getFname() + "', Last_Name= '" + customer.getLname() + "', Hardware_Name= '"+ customer.getHardwareName() +"', Phone= '"+ customer.getPhoneNo() +"', NIC= '" + customer.getNIC() + "', Email= '"+ customer.getEmail() + "', Address= '" + customer.getAddress() + "' WHERE Cus_ID = " + customer.getCusID();      
			
			int result = stmt.executeUpdate(command);//execute the statement
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else {
				//insertion is unsuccessful
				Success=false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return Success;
	}
	
	//customer update customer Details
	public boolean updatedCustomer(Customer customer) {
		boolean Success = false;//assign false before execution
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command = "UPDATE smd.customer SET First_name= '" + customer.getFname() + "', Last_Name= '" + customer.getLname() + "', Hardware_Name= '"+ customer.getHardwareName() +"', Phone= '"+ customer.getPhoneNo() + "', Address= '" + customer.getAddress() + "' WHERE Cus_ID = " + customer.getCusID();      
			
			int result = stmt.executeUpdate(command);//execute the statement
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else {
				//insertion is unsuccessful
				Success=false;
			}
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
			
			String command =  "delete from smd.customer where Cus_ID = " + id ;
			int result = stmt.executeUpdate(command);//execute the statement
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else {
				//insertion is unsuccessful
				Success=false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return Success;
	}
	
	@Override
	//search hardware
	public Customer[] search(String search) {
		//create linked list to take the data from the database.
		List<Customer> ll = new LinkedList<Customer>();
		
		//Created an array to store all the customer details.
		Customer[] array = null;
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		
		try {
			Statement stmt = dbc.getConnection().createStatement();
			String command = "SELECT * from smd.customer WHERE Hardware_Name LIKE '%" + search + "%'";
			ResultSet rs = stmt.executeQuery(command);//execute the statement
			
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

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return array;
	}
	
	public boolean updatePassword(int id, String pwd) {
		boolean Success = false;//assign false before execution
		
		//creating the database connection
		DBConnection dbc = new DBConnection();
		try {
			Statement stmt = dbc.getConnection().createStatement();
			
			String command = "UPDATE smd.customer SET password = '" + pwd + "' WHERE Cus_ID =" + id;      
			
			int result = stmt.executeUpdate(command);//execute the statement
			
			if(result>0) {
				//insertion is successful if result is 1
				Success=true;
			}
			else {
				//insertion is unsuccessful
				Success=false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return Success;
	}
	
	//get customer order Summary
	public OrderSummary[] getOrderDetails(int id) {
		//create linked list to take the data from the database.
		List<OrderSummary> ll = new LinkedList<OrderSummary>();
		
		//Created an array to store all the customer details.
		OrderSummary[] array = null;
		
		//Make the connection with Database
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "select * from smd.OrderSummary where Cust_ID = " + id;
			ResultSet rs = stmt.executeQuery(command);//execute the statement
			
			//Adding the data retrieved from the database to the LinkList
			while (rs.next()) {
				OrderSummary c = new OrderSummary(
						rs.getInt(1),		//customer ID
						rs.getInt(2), 		//invoice ID
						rs.getString(3),	//order date
						rs.getString(4),	//product name
						rs.getInt(5),		//Quantity
						rs.getString(6),	//order Status
						rs.getDouble(7),	//Order Total
						rs.getDouble(8),	//Paid Amount
						rs.getDouble(9)		//Remaining Balance
						);
				ll.add(c);
			}
			//Inserting the value in the LinkList to the array
			array = ll.toArray(new OrderSummary[ll.size()]);

		} catch (Exception e) {
			e.printStackTrace();
		}	
		return array;
	}
	
	//get customer payment summary
	public PaySummary[] getPaymentDetails(int id) {
		//create linked list to take the data from the database.
		List<PaySummary> ll = new LinkedList<PaySummary>();
		
		//Created an array to store all the customer details.
		PaySummary[] array = null;
		
		//Make the connection with Database
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "select * from PaySummary where Cus_ID = " + id;
			ResultSet rs = stmt.executeQuery(command);//execute the statement
			
			//Adding the data retrieved from the database to the LinkList
			while (rs.next()) {
				PaySummary p = new PaySummary(
						rs.getInt(1),		//customer ID
						rs.getInt(2),		//Receipt ID
						rs.getInt(3), 		//invoice ID
						rs.getString(4),	//order date
						rs.getDouble(5)	//product name
						);
				ll.add(p);
			}
			//Inserting the value in the LinkList to the array
			array = ll.toArray(new PaySummary[ll.size()]);

		} catch (Exception e) {
			e.printStackTrace();
		}	
		return array;
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
