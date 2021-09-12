package com.smd.service;
import com.smd.model.MonthlyOrder;
import com.smd.model.Order;


import com.smd.util.DBConnection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrderM {

	//view order method
	public static List<Order> ViewOrder(){
		
		//create order type array list object
		ArrayList<Order> odr=new ArrayList<>(); 
		
		//create DBConnection object
		DBConnection con = new DBConnection();
		
		try {
			//create statement object by using DBConnection object
			Statement stmt = con.getConnection().createStatement();
			String Sql="select * from orders"; //executing a query
			ResultSet rs= stmt.executeQuery(Sql);
			
			//assigned details retrieved from the database to order object
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
		
		
		
		// return order type list object 
		return odr;
		
		
		
		
	}
	
	//add order method
	
	public static boolean insertorder(int cid,double tprice,int qty,int pid) {
		double tp=tprice;
		boolean issuccess=false; //assign issuccess to false before execution of query
		//create DBConnection object
		DBConnection con = new DBConnection();
		
		try {
			Statement stmt = con.getConnection().createStatement();//create statement object by using DBConnection object
			String Sql="insert into orders values (0,'"+cid+"',curdate(),'pending','"+tprice+"',0,'"+tp+"','"+qty+"','"+pid+"')";
			int rs=stmt.executeUpdate(Sql);//executing a query
			
			if(rs>0) {
				//insertion is successful if rs is 1
				issuccess=true;
			}else {
				//insertion is unsuccessful
				issuccess=false;
				
			}
			
		}catch(Exception e){
			
			
			e.printStackTrace();
		}
		
		
		return issuccess;
	}
	
	//admin's order update method
	public static boolean updateorderadmin(int oid,int cod,String date,String states,double tprice,double pamount,double ramount,int qty,int pid ){
		boolean isdone=false; //assign isdone to false before execution of query
		
		try {
			DBConnection con = new DBConnection();//create DBConnection object
			Statement stmt = con.getConnection().createStatement();//create statement object by using DBConnection object
			String sql="update orders set Order_Date='"+date+"',Order_Status='"+states+"',Total_Price='"+tprice+"',Paid_Amount='"+pamount+"',Remaining_Amount ='"+ramount+"',Qty='"+qty+"',Product_ID='"+pid+"'"+"where Order_ID='"+oid+"'";
			int rs=stmt.executeUpdate(sql);//executing a query
			
			if(rs>0) {
				//insertion is successful if rs is 1
				isdone=true;
			}else {
				//insertion is unsuccessful
				isdone=false;
				
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		return isdone;
	}
	
	//delete order method
	public static boolean deleteeorderadmin(int oid){
		boolean isdone=false; //assign isdone to false before execution of query
		
		try {
			DBConnection con = new DBConnection();//create DBConnection object
			Statement stmt = con.getConnection().createStatement();//create statement object by using DBConnection object
			String sql="delete from orders where Order_ID='"+oid+"'";
			int rs=stmt.executeUpdate(sql);//executing a query
			
			if(rs>0) {
				//insertion is successful if rs is 1
				isdone=true;
			}else {
				//insertion is unsuccessful
				isdone=false;
				
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		return isdone;
	}
	
	//view order method
public static List<Order> ViewOrderCustomer(int id){
		
	//create order type array list object
		ArrayList<Order> odr=new ArrayList<>(); 
		
		
		DBConnection con = new DBConnection();//create DBConnection object
		
		try {
			Statement stmt = con.getConnection().createStatement();//create statement object by using DBConnection object
			String Sql="select * from orders where Cust_ID='"+id+"'";
			ResultSet rs= stmt.executeQuery(Sql);//executing a query
			
			//assigned details retrieved from the database to order object
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
		
		
		
		
		return odr;
		
		
		
		
	}

	//customer's update method
public static boolean updateordercustomer(int oid,int qty){
	boolean isdone=false; //assign isdone to false before execution of query
	
	try {
		DBConnection con = new DBConnection();//create DBConnection object
		Statement stmt = con.getConnection().createStatement();//create statement object by using DBConnection object
		String sql="update orders set Qty='"+qty+"'"+"where Order_ID='"+oid+"'";
		int rs=stmt.executeUpdate(sql);//executing a query
		
		if(rs>0) {
			//insertion is successful if rs is 1
			isdone=true;
		}else {
			//insertion is unsuccessful
			isdone=false;
			
		}
		
	}catch(Exception e){
		
		e.printStackTrace();
	}
	
	
	return isdone;
}

	//get monthly report method
	public static List<MonthlyOrder> ViewMonthlyOrderReport(){
	
		//create order type array list object
	ArrayList<MonthlyOrder> odr=new ArrayList<>(); 
	
	
	DBConnection con = new DBConnection();//create DBConnection object
	
	try {
		Statement stmt = con.getConnection().createStatement();//create statement object by using DBConnection object
		String Sql="select * from monthly_order";
		ResultSet rs= stmt.executeQuery(Sql);
		
		//assigned details retrieved from the database to monthly order object
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
	
	
	
	// return MonthlyOrder type list object 
	return odr;
	
	
	
	
}
	//view deleted orders method
public static List<Order> ViewdeletedOrder(){
		
	//create order type array list object
		ArrayList<Order> odr=new ArrayList<>(); 
		
		
		DBConnection con = new DBConnection();//create DBConnection object
		
		try {
			Statement stmt = con.getConnection().createStatement();//create statement object by using DBConnection object
			String Sql="select * from deleteorders";
			ResultSet rs= stmt.executeQuery(Sql);//executing a query
			
			//assigned details retrieved from the database to order object
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
		
		
		
		// return order type list object 
		return odr;
		
		
		
		
	}


	
	
}
