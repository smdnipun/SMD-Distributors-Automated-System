package com.smd.service;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import com.smd.util.DBConnection;
import com.smd.model.Order;
import com.smd.model.Stock;

public class StockDB{
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

//Stock or
public Order[] getOrder() {

	List<Order> ll = new LinkedList<Order>();
	Order[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from order where Order_Status='Accepted'");
		while (rs.next()) {
			Order n = new Order(
			rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getDouble(6),
			rs.getDouble(7),rs.getInt(8),rs.getInt(9));
			ll.add(n);
		}
		array = ll.toArray(new Order[ll.size()]);

	} catch (Exception e) {
	}

	return array;

}


}