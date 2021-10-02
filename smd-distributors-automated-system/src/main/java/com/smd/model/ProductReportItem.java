package com.smd.model;

public class ProductReportItem {

	String Pname;
	String Cname;
	int Quantity;
	int price;
	String Date;
	
	public ProductReportItem(String pname, String cname, int quantity, int price, String date) {
		Pname = pname;
		Cname = cname;
		Quantity = quantity;
		this.price = price;
		Date = date;
	}
	public String getPname() {
		return Pname;
	}
	public String getCname() {
		return Cname;
	}
	public int getQuantity() {
		return Quantity;
	}
	public int getPrice() {
		return price;
	}
	public String getDate() {
		return Date;
	}
	
	
}
