package com.smd.model;

//Create Payment details class
public class PaymentDetails {
	private String PaymentID;
	private String CusName;
	private String CusID;
	private String InvoiceID;
	private double TotalAmount;
	private double PaidAmount;
	private double Balance;

//Constructor

	public PaymentDetails(String paymentID, String cusName, String cusID, String invoiceID, double totalAmount,
			double paidAmount, double balance) {
		super();
		PaymentID = paymentID;
		CusName = cusName;
		CusID = cusID;
		InvoiceID = invoiceID;
		TotalAmount = totalAmount;
		PaidAmount = paidAmount;
		Balance = balance;
	}

	// Setters and getters
	public String getPaymentID() {
		return PaymentID;
	}

	public void setPaymentID(String paymentID) {
		PaymentID = paymentID;
	}

	public String getCusName() {
		return CusName;
	}

	public void setCusName(String cusName) {
		CusName = cusName;
	}

	public String getCusID() {
		return CusID;
	}

	public void setCusID(String cusID) {
		CusID = cusID;
	}

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

}