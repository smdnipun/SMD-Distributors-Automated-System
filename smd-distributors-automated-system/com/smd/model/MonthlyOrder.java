package com.smd.model;

public class MonthlyOrder {

	private int PID;
	private double TPRICE;
	private int TQTY;
	public MonthlyOrder(int pID, double tPRICE, int tQTY) {
		
		PID = pID;
		TPRICE = tPRICE;
		TQTY = tQTY;
	}
	public int getPID() {
		return PID;
	}
	public double getTPRICE() {
		return TPRICE;
	}
	public int getTQTY() {
		return TQTY;
	}
	public void setPID(int pID) {
		PID = pID;
	}
	public void setTPRICE(double tPRICE) {
		TPRICE = tPRICE;
	}
	public void setTQTY(int tQTY) {
		TQTY = tQTY;
	}
	
	
	
	
	
	
}
