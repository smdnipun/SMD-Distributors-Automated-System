package com.smd.service;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import com.smd.util.DBConnection;

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
			Stock n = new Stock(rs.getString(1), rs.getString(2), rs.getInt(3),rs.getString(10));
			ll.add(n);
		}
		array = ll.toArray(new Stock[ll.size()]);

	} catch (Exception e) {
	}
	return array;

}

}