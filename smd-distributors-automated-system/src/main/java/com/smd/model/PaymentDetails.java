package com.smd.model;

//Create Payment details class
public class PaymentDetails {
	private String CusName;
//	private String CusID;
	private String InvoiceID;
	private double TotalAmount;
	private double PaidAmount;
	private double Balance;
	private String Status;

//overloaded Constructor
	// String cusID
	public PaymentDetails(String cusName, String invoiceID, double totalAmount, double paidAmount,
			double balance,String status) {
		
	
		CusName = cusName;
//		CusID = cusID;
		InvoiceID = invoiceID;
		TotalAmount = totalAmount;
		PaidAmount = paidAmount;
		Balance = balance;
		Status = status;
	}

	// Setters and getters
	public String getCusName() {
		return CusName;
	}

	public void setCusName(String cusName) {
		CusName = cusName;
	}

//	public String getCusID() {
//		return CusID;
//	}
//
//	public void setCusID(String cusID) {
//		CusID = cusID;
//	}

	public String getInvoiceID() {
		return InvoiceID;
	}

	public void setInvoiceID(String invoiceID) {
		InvoiceID = invoiceID;
	}

	public double getTotalAmount() {
		return TotalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		TotalAmount = totalAmount;
	}

	public double getPaidAmount() {
		return PaidAmount;
	}

	public void setPaidAmount(double paidAmount) {
		PaidAmount = paidAmount;
	}

	public double getBalance() {
		return Balance;
	}

	public void setBalance(double balance) {
		Balance = balance;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

}