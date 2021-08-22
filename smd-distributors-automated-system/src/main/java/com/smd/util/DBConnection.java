package com.smd.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.NewOrdersConf;
import com.smd.model.PaymentDetails;

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
}