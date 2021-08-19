package com.smd.model;
//create CustomerAgedRecivable class
public class CustomerAgedRecivable {

	private String CusName;
	private String InvoiceNo;
	private String Date;
	private double TotalAmount;
	private double PaidAmount;
	private double Balance;
	
//constructor
	public CustomerAgedRecivable(String cusName, String invoiceNo, String date, double totalAmount, double paidAmount,
			double balance) {
		super();
		CusName = cusName;
		InvoiceNo = invoiceNo;
		Date = date;
		TotalAmount = totalAmount;
		PaidAmount = paidAmount;
		Balance = balance;
	}

//setters and getters
	public String getCusName() {
		return CusName;
	}

	public void setCusName(String cusName) {
		CusName = cusName;
	}

	public String getInvoiceNo() {
		return InvoiceNo;
	}

	public void setInvoiceNo(String invoiceNo) {
		InvoiceNo = invoiceNo;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
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
