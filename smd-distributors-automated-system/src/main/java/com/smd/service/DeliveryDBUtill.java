package com.smd.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.CallableStatement;
import com.smd.model.Delivery;
import com.smd.model.Vehicle;
import com.smd.util.DBConnection;

public class DeliveryDBUtill {

	private static Connection con = null;
	private static Statement stmt=null;
	private static ResultSet rs = null;
	
	
	
	
	public static List<Delivery> getDelivary(){
		
		ArrayList<Delivery> dil = new ArrayList<>();
		
		try{
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from Delivery";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int Delivery_ID = rs.getInt(1);
				String Route = rs.getString(2);
				String Date = rs.getString(3);
				String Status = rs.getString(4);
				int Order_ID = rs.getInt(5);
				int Cus_ID = rs.getInt(6);
				String vehicle = rs.getString(7);
				
				Delivery d = new Delivery(Delivery_ID,Route,Date,Status,Order_ID,Cus_ID,vehicle);
				dil.add(d);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return dil;
	}	
	
	
	
	
	public static boolean insertDelivery(String route, String date, String status, int ooid, int ccid, String vehicle){
		
		boolean isSuccess=false;
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into delivery values(0,'"+route+"','"+date+"','"+status+"','"+ooid+"','"+ccid+"','"+vehicle+"')";
			int rrs = stmt.executeUpdate(sql);
			
			if(rrs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}		
		}
		catch(Exception e) {		
			e.printStackTrace();		
		}
		return isSuccess;
	}
	
	
	
	
	public static boolean updateDelivery(int did, String status) {
		
		boolean isSuccess = false;
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update delivery set Status='"+status+"'"+ "where Delivery_ID='"+did+"'";
			int rrs = stmt.executeUpdate(sql);
			
			if(rrs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	
	public static boolean deleteDelivery(int did) {
		
		boolean isSuccess = false;
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from delivery where Delivery_ID='"+did+"'";
			int rrs = stmt.executeUpdate(sql);
			
			if(rrs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
public static List<Delivery> deliveryReport(String date){
		
		ArrayList<Delivery> report = new ArrayList<>();
		
		try{
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from Delivery where month(Date)=extract(month from '"+date+"') and year(Date)=extract(year from '"+date+"')";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int Delivery_ID = rs.getInt(1);
				String Route = rs.getString(2);
				String Date = rs.getString(3);
				String Status = rs.getString(4);
				int Order_ID = rs.getInt(5);
				int Cus_ID = rs.getInt(6);
				String vehicle = rs.getString(7);
				
				Delivery d = new Delivery(Delivery_ID,Route,Date,Status,Order_ID,Cus_ID,vehicle);
				report.add(d);
			}	
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return report;
	}




	public static List<Vehicle> getVehicle() {
	
		ArrayList<Vehicle> veh = new ArrayList<>();
		
		try{
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from vehicle";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				String Vehicle_Num = rs.getString(1);
				String Insurence_Exp = rs.getString(2);
				String Licence_Exp = rs.getString(3);
				String Type = rs.getString(4);
				double Supported_Weight = rs.getDouble(5);
				String Status = rs.getString(6);
				
				
				Vehicle v = new Vehicle(Vehicle_Num,Insurence_Exp,Licence_Exp,Status,Supported_Weight,Type);
				veh.add(v);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return veh;
	
	}




	public static boolean updateVehicle(String vnum, String vin, String vl, String vs) {

		boolean isSuccess = false;
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update vehicle set Status='"+vs+"',Licence_Exp='"+vl+"',Insurence_Exp='"+vin+"'"+ "where Vehicle_Num='"+vnum+"'";
			int rrs = stmt.executeUpdate(sql);
			
			if(rrs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}




	public static boolean deleteVehicle(String vnum) {
		
		boolean isSuccess = false;
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from vehicle where Vehicle_Num='"+vnum+"'";
			int rrs = stmt.executeUpdate(sql);
			
			if(rrs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}




	public static List<Delivery> getDeletedDelivary() {
		
		ArrayList<Delivery> dil = new ArrayList<>();
		
		try{
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from deleteddelivery";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int Delivery_ID = rs.getInt(1);
				String Route = rs.getString(2);
				String Date = rs.getString(3);
				String Status = rs.getString(4);
				int Order_ID = rs.getInt(5);
				int Cus_ID = rs.getInt(6);
				String vehicle = rs.getString(7);
				
				Delivery d = new Delivery(Delivery_ID,Route,Date,Status,Order_ID,Cus_ID,vehicle);
				dil.add(d);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return dil;
		
	}	
	
	public static boolean insertVehicle(String vnum, String idate, String ldate, String type, double wweight,String status) {

		boolean isSuccess=false;

		try {
		con = DBConnection.getConnection();
		stmt = con.createStatement();
		String sql = "insert into vehicle values('"+vnum+"','"+idate+"','"+ldate+"','"+type+"','"+wweight+"','"+status+"')";
		int rrs = stmt.executeUpdate(sql);

		if(rrs>0) {
		isSuccess=true;
		}else {
		isSuccess=false;
		}
		}
		catch(Exception e) {
		e.printStackTrace();
		}
		return isSuccess;
		}
}
