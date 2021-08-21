package com.smd.service;
import com.smd.util.DBConnection;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.Customer;

public class customerDetails {
	public Customer[] getCustomerDetails() {
		List<Customer> ll = new LinkedList<Customer>();
		Customer[] array = null;
		DBConnection con = new DBConnection();
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from customer");
			while (rs.next()) {
				Customer c = new Customer(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11)
						);
				ll.add(c);
			}
			array = ll.toArray(new Customer[ll.size()]);

		} catch (Exception e) {}
		
		return array;
	}
}
