package com.smd.model;

//Create Stockorder Class
public class Stockorder {
	private int oID;
	private int qty;
	private String odate;
	private String pName;

	// Constructor
	public Stockorder(int oID, int qty, String odate, String pName) {
		this.oID = oID;
		this.qty = qty;
		this.odate = odate;
		this.pName = pName;
	}

	// Created constructor
	public Stockorder() {

	}

	// Getters
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

	// Setters
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

}
