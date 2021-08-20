package com.smd.service;
import com.smd.model.Order;


import com.smd.util.DBConnection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrderM {

	public static List<Order> ViewOrder(){
		
		ArrayList<Order> odr=new ArrayList<>(); 
		
		
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			String Sql="select * from orders";
			ResultSet rs= stmt.executeQuery(Sql);
			
			while(rs.next()) {
				int oid=rs.getInt(1);
				int cid=rs.getInt(2);
				String date=rs.getString(3);
				String states=rs.getString(4);
				double tprice=rs.getDouble(5);
				double pamount=rs.getDouble(6);
				double ramount=rs.getDouble(7);
				int qty=rs.getInt(8);
				int pid=rs.getInt(9);
				
				Order o=new Order(oid,cid,date,states,tprice,pamount,ramount,qty,pid);
				odr.add(o);
				
				
			}
			
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		
		
		// return list type order object 
		return odr;
		
		
		
		
	}
	
	public static boolean insertorder(int cid,String odate,double tprice,int qty,int pid) {
		double tp=tprice;
		boolean issuccess=false;
		
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			String Sql="insert into orders values (0,'"+cid+"','"+odate+"','','"+tprice+"',0,'"+tp+"','"+qty+"','"+pid+"')";
			int rs=stmt.executeUpdate(Sql);
			
			if(rs>0) {
				issuccess=true;
			}else {
				issuccess=false;
				
			}
			
		}catch(Exception e){
			
			
			e.printStackTrace();
		}
		
		
		return issuccess;
	}
	
	
	
}
