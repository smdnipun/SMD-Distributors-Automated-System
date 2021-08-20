package com.smd.model;

//create NewOrders class
public class NewOrders {

	private String Customer;
	private String Date;
	private int Quantity;
	private double TotalPrice;

//constructor
	public NewOrders(String customer, String date, int quantity, double totalPrice) {
		super();
		Customer = customer;
		Date = date;
		Quantity = quantity;
		TotalPrice = totalPrice;
	}

//setters and getters
	public String getCustomer() {
		return Customer;
	}

	public void setCustomer(String customer) {
		Customer = customer;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
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
