package com.smd.service;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import com.smd.util.DBConnection;
import com.smd.model.Stock;
import com.smd.model.Stockorder;
import com.smd.model.Stocksummary;

public class StockDB{
	//Stock
public Stock[] getStockdetails() {
	List<Stock> ll = new LinkedList<Stock>();
	Stock[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM stock;");
		while (rs.next()) {
			Stock n = new Stock(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getInt(4), rs.getString(5));
			ll.add(n);
		}
		array = ll.toArray(new Stock[ll.size()]);

	} catch (Exception e) {
	}
	return array;

}

//Stockorder
public Stockorder[] getStockorder() {

	List<Stockorder> ll = new LinkedList<Stockorder>();
	Stockorder[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from stocksorder");
		while (rs.next()) {
			Stockorder n = new Stockorder(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4));
			ll.add(n);
		}
		array = ll.toArray(new Stockorder[ll.size()]);

	} catch (Exception e) {
	}

	return array;

}

//Stocksummary
public Stocksummary[] getStocksummary() {

	List<Stocksummary> ll = new LinkedList<Stocksummary>();
	Stocksummary[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from stockssummary");
		while (rs.next()) {
			Stocksummary n = new Stocksummary(rs.getString(1),rs.getInt(2));
			ll.add(n);
		}
		array = ll.toArray(new Stocksummary[ll.size()]);

	} catch (Exception e) {
	}

	return array;

}

/*
 * //Stocksummary public Stocksummary[] getQuantity() {
 * 
 * List<Stocksummary> ll = new LinkedList<Stocksummary>(); Stocksummary[] array
 * = null; DBConnection con = new DBConnection(); try { Statement stmt =
 * con.getConnection().createStatement(); ResultSet rs = stmt.
 * executeQuery("select (sa.AddQuantity-sd.DelQuantity) from stockssummary where Item_Name ="
 * + request.getParameter("itemname")+";"); while (rs.next()) { Stocksummary n =
 * new Stocksummary(rs.getString(1),rs.getInt(2)); ll.add(n); } array =
 * ll.toArray(new Stocksummary[ll.size()]);
 * 
 * } catch (Exception e) { }
 * 
 * return array;
 * 
 * }
 */

}