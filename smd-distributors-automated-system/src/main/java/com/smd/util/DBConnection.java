package com.smd.util;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;


import com.smd.model.Payment;

public class DBConnection {
	
	private static Connection con;

	// This works according to singleton pattern
	public DBConnection() {

	}

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
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