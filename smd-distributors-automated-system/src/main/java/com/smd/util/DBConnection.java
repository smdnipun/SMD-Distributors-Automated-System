package com.smd.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.NewOrdersConf;
import com.smd.model.Payment;
import com.smd.model.Product;

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
	
	public Product[] search(String search) {
		List<Product> ll = new LinkedList<Product>();
		Product[] array = null;
		try {
			Statement stmt=this.getConnection().createStatement();
			String command= "SELECT * from smd.product WHERE Name LIKE '%"+search+"%'";
			ResultSet rs=stmt.executeQuery(command);
			while(rs.next()) {
				Product n=new Product(rs.getString(4),rs.getString(5),rs.getInt(1),rs.getInt(2));
				ll.add(n);
			}
			
			array = ll.toArray(new Product[ll.size()]);
			 
		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}
}