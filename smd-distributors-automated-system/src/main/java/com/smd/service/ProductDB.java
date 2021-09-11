package com.smd.service;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.Product;
import com.smd.util.DBConnection;

public class ProductDB {

	private DBConnection con = new DBConnection();

	public ProductDB() {
	}

	public Product[] search(String search) {
		List<Product> ll = new LinkedList<Product>();
		Product[] array = null;
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "SELECT * from smd.product WHERE Name LIKE '%" + search + "%'";
			ResultSet rs = stmt.executeQuery(command);
			while (rs.next()) {
				Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5));
				ll.add(n);
			}

			array = ll.toArray(new Product[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}

	public Product[] getAllProducts() {
		List<Product> ll = new LinkedList<Product>();
		Product[] array = null;
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "SELECT * from smd.product";
			ResultSet rs = stmt.executeQuery(command);
			while (rs.next()) {
				Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5));
				ll.add(n);
			}

			array = ll.toArray(new Product[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}

	@SuppressWarnings("unused")
	public Product getProductById(int id) {
		List<Product> ll = new LinkedList<Product>();
		Product[] array = null;
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "SELECT * from smd.product where Prod_ID =" + id;
			ResultSet rs = stmt.executeQuery(command);
			while (rs.next()) {
				if (rs.getInt(6) == 1) {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), true,rs.getString(7));
					return n;
				} else {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), false,rs.getString(7));
					return n;
				}
			}
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		return null;
	}

	public Product[] getAvailableProducts() {
		List<Product> ll = new LinkedList<Product>();
		Product[] array = null;
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "SELECT * from smd.product";
			ResultSet rs = stmt.executeQuery(command);
			while (rs.next()) {
				if (rs.getInt(6) == 1) {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), true,rs.getString(7));
					ll.add(n);
				}
			}

			array = ll.toArray(new Product[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}

}
