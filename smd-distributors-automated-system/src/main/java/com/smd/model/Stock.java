package com.smd.model;
//Create Stock Class
public class Stock {
	
	private int stockID;
	private String itemName;
	private int quntity;
	private String date;
	
//Constructor
	public Stock(int stockID, String itemName, String date, int quntity) {
		this.stockID=stockID;
		this.itemName=itemName;
		this.quntity=quntity;
		this.date=date;
	}
	
public Stock() {
		//Created constructor 
	}

	//Getters
	public int getStockID() {
		return stockID;
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
	public void setStockID(int stockID) {
		this.stockID = stockID;
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
