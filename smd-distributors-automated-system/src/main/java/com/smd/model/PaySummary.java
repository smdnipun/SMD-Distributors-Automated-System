package com.smd.model;

public class PaySummary {
	private int Cus_ID;
	private int RecieptID;
	private int InvoiceID;
	private String Date;
	private double PaidAmount;
	
	//default constructor
	public PaySummary(int cus_ID, int recieptID, int invoiceID, String date, double paidAmount) {
		super();
		Cus_ID = cus_ID;
		RecieptID = recieptID;
		InvoiceID = invoiceID;
		Date = date;
		PaidAmount = paidAmount;
	}
	
	//getters and setters
	public int getCus_ID() {
		return Cus_ID;
	}
	public void setCus_ID(int cus_ID) {
		Cus_ID = cus_ID;
	}
	public int getRecieptID() {
		return RecieptID;
	}
	public void setRecieptID(int recieptID) {
		RecieptID = recieptID;
	}
	public int getInvoiceID() {
		return InvoiceID;
	}
	public void setInvoiceID(int invoiceID) {
		InvoiceID = invoiceID;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public double getPaidAmount() {
		return PaidAmount;
	}
	public void setPaidAmount(double paidAmount) {
		PaidAmount = paidAmount;
	}
	
}
