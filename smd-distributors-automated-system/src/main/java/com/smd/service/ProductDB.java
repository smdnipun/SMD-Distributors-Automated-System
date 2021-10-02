package com.smd.service;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.smd.model.Product;
import com.smd.model.ProductReportItem;
import com.smd.util.DBConnection;

public class ProductDB {

	private DBConnection con = new DBConnection();

	public ProductDB() {
	}

	// database connection of Search
	public Product[] search(String search) {
		List<Product> ll = new LinkedList<Product>();
		Product[] array = null;
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "SELECT * from smd.product WHERE Name LIKE '%" + search + "%'";
			ResultSet rs = stmt.executeQuery(command);
//			while (rs.next()) {
//				Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5));
//				ll.add(n);
//			}

			while (rs.next()) {
				if (rs.getInt(6) == 1) {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), true, rs.getString(7));
					ll.add(n);
				} else {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), false, rs.getString(7));
					ll.add(n);
				}

			}

			array = ll.toArray(new Product[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}

	// database connection of Dispaly products
	public Product[] getAllProducts() {
		List<Product> ll = new LinkedList<Product>();
		Product[] array = null;
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "SELECT * from smd.product";
			ResultSet rs = stmt.executeQuery(command);
			while (rs.next()) {
				if (rs.getInt(6) == 1) {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), true, rs.getString(7));
					ll.add(n);
				} else {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), false, rs.getString(7));
					ll.add(n);
				}

			}

			array = ll.toArray(new Product[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}

	// database connection to get product id
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
							rs.getInt(5), true, rs.getString(7));
					return n;
				} else {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), false, rs.getString(7));
					return n;
				}
			}
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		return null;
	}

	// database connection of available products
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
							rs.getInt(5), true, rs.getString(7));
					ll.add(n);
				}
			}

			array = ll.toArray(new Product[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}

	public Product[] SeachInAvailable(String search) {
		List<Product> ll = new LinkedList<Product>();
		Product[] array = null;
		try {
			Statement stmt = con.getConnection().createStatement();
			String command = "SELECT * from smd.product WHERE Name LIKE '%" + search + "%'";
			ResultSet rs = stmt.executeQuery(command);
			while (rs.next()) {
				if (rs.getInt(6) != 0) {
					Product n = new Product(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5), true, rs.getString(7));
					ll.add(n);
				}
			}

			array = ll.toArray(new Product[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}
	
	public ProductReportItem[] getReport(String month,String product) {
		List<ProductReportItem> ll = new LinkedList<ProductReportItem>();
		ProductReportItem[] array = null;
		try {
			String command = "";
			if(month==null) {
				command = "SELECT * from smd.productreport WHERE Product_Name ='"+product+"'";
			}
			Statement stmt = con.getConnection().createStatement();
			command = "SELECT * from smd.productreport WHERE Product_Name ='"+product+"' and Order_Date LIKE '%" + month +"-%'";
			if(month.equals("0")&&product.equals("0")) {
				command = "SELECT * from smd.productreport";
			}else if(product.equals("0")){
				command = "SELECT * from smd.productreport WHERE Order_Date LIKE '%" + month +"-%'";
			}
			
			ResultSet rs = stmt.executeQuery(command);
			while (rs.next()) {
					ProductReportItem n = new ProductReportItem(rs.getString(1), rs.getString(2),rs.getInt(3), rs.getInt(4),rs.getString(5));
					ll.add(n);
			}
			
			array = ll.toArray(new ProductReportItem[ll.size()]);

		} catch (Exception e) {
			System.out.println(e);
		}
		return array;
	}

}
