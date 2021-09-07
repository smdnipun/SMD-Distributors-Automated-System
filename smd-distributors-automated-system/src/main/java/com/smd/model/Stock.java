package com.smd.model;
//Create Stock Class
public class Stock {
	
	private int stockID;
	private String itemName;
	private int quntity;
	private String date;
	private String status;
	private int oID;
	private int qty;
	private String odate;
	private String pName;
	
//Constructor
	public Stock(int stockID, String itemName, String date, int quntity, String status, int oID, int qty, String odate, String pName) {
		this.stockID=stockID;
		this.itemName=itemName;
		this.quntity=quntity;
		this.date=date;
		this.status=status;
		this.oID=oID;
		this.qty=qty;
		this.odate=odate;
		this.pName=pName;
	}
	
	//Created constructor 
public Stock() {
		
	}
//Getters

	public int getoID() {
	return oID;
}

public int getQty() {
	return qty;
}

public String getOdate() {
	return odate;
}

public String getpName() {
	return pName;
}


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
	public String getStatus() {
		return status;
	}
	
//Setters
	
	public void setStockID(int stockID) {
		this.stockID = stockID;
	}

	public void setoID(int oID) {
		this.oID = oID;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public void setOdate(String odate) {
		this.odate = odate;
	}

	public void setpName(String pName) {
		this.pName = pName;
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
	public void setStatus(String status) {
		this.status = status;
	}
	
}
