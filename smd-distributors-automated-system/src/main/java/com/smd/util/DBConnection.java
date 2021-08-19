package com.smd.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {
	private Connection con;
	// This works according to singleton pattern
	private DBConnection() {
		
	}
	
	public Connection getConnection() throws ClassNotFoundException, SQLException{
		/*
		 * This create new connection objects
		*/
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/smd","root","toor"); 
			}
		catch(Exception e){ 
			System.out.println(e);
		} 
		return con;
	}
}
