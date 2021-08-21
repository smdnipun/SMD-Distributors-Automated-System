package com.smd.service;
import com.smd.model.MonthlyOrder;
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
	
	public static boolean insertorder(int cid,double tprice,int qty,int pid) {
		double tp=tprice;
		boolean issuccess=false;
		
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();
			String Sql="insert into orders values (0,'"+cid+"',curdate(),'','"+tprice+"',0,'"+tp+"','"+qty+"','"+pid+"')";
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
	
	public static boolean updateorderadmin(int oid,int cod,String date,String states,double tprice,double pamount,double ramount,int qty,int pid ){
		boolean isdone=false;
		
		try {
			DBConnection con = new DBConnection();
			Statement stmt = con.getConnection().createStatement();
			String sql="update orders set Order_Date='"+date+"',Order_Status='"+states+"',Total_Price='"+tprice+"',Paid_Amount='"+pamount+"',Remaining_Amount ='"+ramount+"',Qty='"+qty+"',Product_ID='"+pid+"'"+"where Order_ID='"+oid+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isdone=true;
			}else {
				isdone=false;
				
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		return isdone;
	}
	
	public static boolean deleteeorderadmin(int oid){
		boolean isdone=false;
		
		try {
			DBConnection con = new DBConnection();
			Statement stmt = con.getConnection().createStatement();
			String sql="delete from orders where Order_ID='"+oid+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isdone=true;
			}else {
				isdone=false;
				
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		return isdone;
	}
	
public static List<Order> ViewOrderCustomer(){
		
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

public static boolean updateordercustomer(int oid,int qty){
	boolean isdone=false;
	
	try {
		DBConnection con = new DBConnection();
		Statement stmt = con.getConnection().createStatement();
		String sql="update orders set Qty='"+qty+"'"+"where Order_ID='"+oid+"'";
		int rs=stmt.executeUpdate(sql);
		
		if(rs>0) {
			isdone=true;
		}else {
			isdone=false;
			
		}
		
	}catch(Exception e){
		
		e.printStackTrace();
	}
	
	
	return isdone;
}

	public static List<MonthlyOrder> ViewMonthlyOrderReport(){
	
	ArrayList<MonthlyOrder> odr=new ArrayList<>(); 
	
	
	DBConnection con = new DBConnection();
	
	try {
		Statement stmt = con.getConnection().createStatement();
		String Sql="select * from monthly_order";
		ResultSet rs= stmt.executeQuery(Sql);
		
		while(rs.next()) {
			int PID=rs.getInt(1);
			double TPRICE=rs.getDouble(2);
			int TQTY=rs.getInt(3);
			
			
			MonthlyOrder o=new MonthlyOrder(PID,TPRICE,TQTY);
			odr.add(o);
			
			
		}
		
		
	}catch(Exception e){
		
		e.printStackTrace();
		
	}
	
	
	
	// return list type MonthlyOrder object 
	return odr;
	
	
	
	
}


	
	
}
