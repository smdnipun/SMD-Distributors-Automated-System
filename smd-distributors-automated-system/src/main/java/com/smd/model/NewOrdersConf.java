package com.smd.model;

//create NewOrders class
public class NewOrdersConf {
	private String OrderID;
	private String Date;
	private String CusID;
	private String Customer;
	private int Quantity;
	private double TotalPrice;

//overloaded constructor

	public NewOrdersConf(String orderID, String date, String cusID, String customer, int quantity, double totalPrice) {
	super();
	OrderID = orderID;
	Date = date;
	CusID = cusID;
	Customer = customer;
	Quantity = quantity;
	TotalPrice = totalPrice;
}
	//setters and getters

	public String getOrderID() {
		return OrderID;
	}

	public void setOrderID(String orderID) {
		OrderID = orderID;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getCusID() {
		return CusID;
	}

	public void setCusID(String cusID) {
		CusID = cusID;
	}

	public String getCustomer() {
		return Customer;
	}

	public void setCustomer(String customer) {
		Customer = customer;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	public double getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		TotalPrice = totalPrice;
	}

	
}
