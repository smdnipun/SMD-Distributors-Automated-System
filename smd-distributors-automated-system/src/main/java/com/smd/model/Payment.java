package com.smd.model;
//create payment class
public class Payment {
	private String PaymentID;
	private String CusID;
	private String InvoiceID;
	private String Date;
	private double PaidAmount;
	private String EmpID;
	
	//Constructor
	public Payment(String paymentID, String cusID, String invoiceID, String date, double paidAmount, String empID) {
		super();
		PaymentID = paymentID;
		CusID = cusID;
		InvoiceID = invoiceID;
		Date = date;
		PaidAmount = paidAmount;
		EmpID = empID;
	}

	public String getPaymentID() {
		return PaymentID;
	}

	public void setPaymentID(String paymentID) {
		PaymentID = paymentID;
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

	public String getEmpID() {
		return EmpID;
	}

	public void setEmpID(String empID) {
		EmpID = empID;
	}


}
