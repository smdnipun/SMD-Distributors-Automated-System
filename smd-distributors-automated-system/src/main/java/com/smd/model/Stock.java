package com.smd.model;
//Create Stock Class
public class Stock {
	
	private String itemID;
	private String itemName;
	private int quntity;
	private double price;
	private String date;
	
//Constructor
	public Stock(String itemID, String itemName, int quntity, double price, String date) {
		this.itemID=itemID;
		this.itemName=itemName;
		this.quntity=quntity;
		this.price=price;
		this.date=date;
	}
	
//Getters
	public String getItemID() {
		return itemID;
	}

	public String getItemName() {
		return itemName;
	}

	public int getQuntity() {
		return quntity;
	}

	public double getPrice() {
		return price;
	}

	public String getDate() {
		return date;
	}
	
//Setters
	public void setItemID(String itemID) {
		this.itemID = itemID;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public void setQuntity(int quntity) {
		this.quntity = quntity;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
}
