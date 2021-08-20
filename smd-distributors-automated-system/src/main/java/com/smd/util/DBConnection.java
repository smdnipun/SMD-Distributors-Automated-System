package com.smd.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;


import com.smd.model.Payment;

public class DBConnection {
	private Connection con;

	// This works according to singleton pattern
	public DBConnection() {

	}

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		/*
		 * This create new connection objects
		 */
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smd", "root", "toor");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
//	database connection of payment 
	public Payment[] getPaymentdetails() {
		List<Payment> ll = new LinkedList<Payment>();
		Payment[] array = null;
		try {
			Statement stmt = this.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from payment");
			while (rs.next()) {
				Payment n = new Payment(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6), rs.getDouble(7), rs.getDouble(8));
				ll.add(n);
			}
			array = ll.toArray(new Payment[ll.size()]);

		} catch (Exception e) {
		}
		return array;

	}
}
