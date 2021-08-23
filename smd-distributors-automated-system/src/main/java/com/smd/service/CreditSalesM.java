package com.smd.service;
import com.smd.util.DBConnection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.CustomerAgedRecivable;
import com.smd.model.NewOrdersConf;
import com.smd.model.PaymentDetails;


public class CreditSalesM{
//database connection of payment details
public PaymentDetails[] getPaymentdetails() {
	
	List<PaymentDetails> ll = new LinkedList<PaymentDetails>();
	PaymentDetails[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from paymentdetails" );
		while (rs.next()) {
			PaymentDetails n = new PaymentDetails(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getInt(7), rs.getDouble(8), rs.getDouble(9),rs.getDouble(10),rs.getString(11));
			ll.add(n);
		}
		array = ll.toArray(new PaymentDetails[ll.size()]);

	} catch (Exception e) {}
	
	return array;

}
//database connection for payments
public PaymentDetails[] getPayments(int i) {
	
	List<PaymentDetails> ll = new LinkedList<PaymentDetails>();
	PaymentDetails[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from paymentdetails where Order_ID="+i);
		while (rs.next()) {
			PaymentDetails n = new PaymentDetails(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getInt(7), rs.getDouble(8), rs.getDouble(9),rs.getDouble(10),rs.getString(11));
			ll.add(n);
		}
		array = ll.toArray(new PaymentDetails[ll.size()]);

	} catch (Exception e) {}
	
	return array;

}
//database connection to get Remaining amount
public int getRemainingAmount(int id) {
DBConnection radbc=new DBConnection();
	try {
		
		Statement stmt = radbc.getConnection().createStatement();
		String command = "select Remaining_Amount from orders where Order_ID="+id;
		ResultSet rs=stmt.executeQuery(command);
		while(rs.next()) {
			return rs.getInt(1);
		}}
	catch (Exception e) {
			}
	return id;
		}




//database connection of New orders
public NewOrdersConf[] getNewOrderDetails() {
	List<NewOrdersConf> ll = new LinkedList<NewOrdersConf>();
	NewOrdersConf[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from neworders ");
		while (rs.next()) {
			NewOrdersConf n = new NewOrdersConf(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5));
			ll.add(n);
		}

		array = ll.toArray(new NewOrdersConf[ll.size()]);

	} catch (Exception e) {
	}
	return array;
}

//database connection of CustomerAged
public CustomerAgedRecivable[] getCreditDetails() {
	List<CustomerAgedRecivable> ll = new LinkedList<CustomerAgedRecivable>();
	CustomerAgedRecivable[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from customeraged");
		while (rs.next()) {
			CustomerAgedRecivable n = new CustomerAgedRecivable(rs.getString(1),rs.getString(2),rs.getDouble(3),rs. getDouble(4),
					rs.getDouble(5));
			ll.add(n);
		}

		array = ll.toArray(new CustomerAgedRecivable[ll.size()]);

	} catch (Exception e) {
	}
	return array;
}
}