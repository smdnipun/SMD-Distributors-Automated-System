package com.smd.model;
//Create Stock Class
public class Stock {
	
	private int itemID;
	private String itemName;
	private int quntity;
	private String date;
	
//Constructor
	public Stock(int itemID, String itemName, String date, int quntity) {
		this.itemID=itemID;
		this.itemName=itemName;
		this.quntity=quntity;
		this.date=date;
	}
	
public Stock() {
		//Created constructor 
	}

	//Getters
	public int getItemID() {
		return itemID;
	}

	public String getItemName() {
		return itemName;
	}

	public int getQuntity() {
		return quntity;
	}

	public String getDate() {
		return date;
	}
	
//Setters
	public void setItemID(int itemID) {
		this.itemID = itemID;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public void setQuntity(int quntity) {
		this.quntity = quntity;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
}
