package com.smd.service;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import com.smd.util.DBConnection;

import com.smd.model.Supplier;

public class SupplierDB{
public Supplier[] getSupplierdetails() {
	List<Supplier> ll = new LinkedList<Supplier>();
	Supplier[] array = null;
	DBConnection con = new DBConnection();
	try {
		Statement stmt = con.getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM vendor;");
		while (rs.next()) {
			Supplier n = new Supplier(rs.getInt(1), rs.getString(10), rs.getString(10), rs.getString(10));
			ll.add(n);
		}
		array = ll.toArray(new Supplier[ll.size()]);

	} catch (Exception e) {
	}
	return array;

}

}