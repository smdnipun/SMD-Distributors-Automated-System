package com.smd.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.smd.model.Order;
import com.smd.util.DBConnection;

public class DeliveryOrderUtill {

	private static Connection con = null;
	private static Statement stmt=null;
	private static ResultSet rs = null;
		
public static List<Order> ViewOrder(){
		
		ArrayList<Order> odr=new ArrayList<>(); 
	
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql="select * from orders";
			rs= stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Order_ID=rs.getInt(1);
				int Cust_ID=rs.getInt(2);
				String Order_Date=rs.getString(3);
				String Order_Status=rs.getString(4);
				double Total_Price=rs.getDouble(5);
				double Paid_Amount=rs.getDouble(6);
				double Remaining_Amount=rs.getDouble(7);
				int Qty=rs.getInt(8);
				int Product_ID=rs.getInt(9);
				
				Order o=new Order(Order_ID,Cust_ID,Order_Date,Order_Status,Total_Price,Paid_Amount,Remaining_Amount,Qty,Product_ID);
				odr.add(o);
				
				
			}
			
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		// return list type order object 
		return odr;	
	}
	
	
}
