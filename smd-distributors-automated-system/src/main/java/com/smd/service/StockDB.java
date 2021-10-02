package com.smd.service;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import com.smd.util.DBConnection;
import com.smd.model.Stock;
import com.smd.model.Stockorder;
import com.smd.model.Stocksummary;

public class StockDB {
	// Database connection of Stock
	public Stock[] getAllStockdetails(String month,String itemName) {
		List<Stock> ll = new LinkedList<Stock>();
		Stock[] array = null;
		DBConnection con = new DBConnection();
		try {
			String command = "";
			if(month==null) {
				command = "SELECT * from smd.stock WHERE Item_Name ='"+itemName+"'";
			}
			Statement stmt = con.getConnection().createStatement();
			command = "SELECT * from smd.stock WHERE Item_Name ='"+itemName+"' and Date LIKE '%" + month +"-%'";
			if(month.equals("0")&&itemName.equals("0")) {
				command = "SELECT * from smd.stock";
			}else if(itemName.equals("0")){
				command = "SELECT * from smd.stock WHERE Date LIKE '%" + month +"-%'";
			}
			
			ResultSet rs = stmt.executeQuery(command);
			while (rs.next()) {
				Stock n = new Stock(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
					ll.add(n);
			}
			
			array = ll.toArray(new Stock[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}
//	public Stock[] getAllStockdetails(String month) {
//		List<Stock> ll = new LinkedList<Stock>();
//		Stock[] array = null;
//		DBConnection con = new DBConnection();
//		try {
//			
//				String command = "";
//				if(month.equals("0"))
//				{
//				command = "SELECT * from smd.stock";
//				}else {
//				command = "SELECT * from smd.stock WHERE Date LIKE '%" +month+"-%'";
//				}
//			Statement stmt = con.getConnection().createStatement();
//			ResultSet rs = stmt.executeQuery("SELECT * FROM stock;");
//			while (rs.next()) {
//				Stock n = new Stock(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
//				ll.add(n);
//			}
//			array = ll.toArray(new Stock[ll.size()]);
//
//		} catch (Exception e) {
//		}
//		return array;
//
//	}
	
	// Database connection of Stock
	public Stock[] getStockdetails() {
		List<Stock> ll = new LinkedList<Stock>();
		Stock[] array = null;
		DBConnection con = new DBConnection();
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM stock where Status ='Add';");
			while (rs.next()) {
				Stock n = new Stock(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
				ll.add(n);
			}
			array = ll.toArray(new Stock[ll.size()]);

		} catch (Exception e) {
		}
		return array;

	}
	
	// Database connection of Stock
	public Stock[] getStockdeletedetails() {
		List<Stock> ll = new LinkedList<Stock>();
		Stock[] array = null;
		DBConnection con = new DBConnection();
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM stock where Status ='Sold';");
			while (rs.next()) {
				Stock n = new Stock(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
				ll.add(n);
			}
			array = ll.toArray(new Stock[ll.size()]);

		} catch (Exception e) {
		}
		return array;

	}

//Database connection of Stockorder
	public Stockorder[] getStockorder() {

		List<Stockorder> ll = new LinkedList<Stockorder>();
		Stockorder[] array = null;
		DBConnection con = new DBConnection();
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from stocksorder");
			while (rs.next()) {
				Stockorder n = new Stockorder(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4));
				ll.add(n);
			}
			array = ll.toArray(new Stockorder[ll.size()]);

		} catch (Exception e) {
		}

		return array;

	}

//Database connection of Stocksummary
	public Stocksummary[] getStocksummary() {

		List<Stocksummary> ll = new LinkedList<Stocksummary>();
		Stocksummary[] array = null;
		DBConnection con = new DBConnection();
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from stockssummary");
			while (rs.next()) {
				Stocksummary n = new Stocksummary(rs.getString(1), rs.getInt(2));
				ll.add(n);
			}
			array = ll.toArray(new Stocksummary[ll.size()]);

		} catch (Exception e) {
		}

		return array;

	}

//Databse connection of Stocksummarycheck

	public int getQuantity(String name) {
		DBConnection con = new DBConnection();
		int quantityOnhand = 0;
		try {
			Statement stmt = con.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select sum from smd.stockssummary where Item_Name ='" + name + "';");
			while (rs.next()) {
				quantityOnhand = rs.getInt(1);
			}

		} catch (Exception e) {
		}
		return quantityOnhand;
	}

}