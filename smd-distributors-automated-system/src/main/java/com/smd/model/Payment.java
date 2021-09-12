package com.smd.model;

//create payment class
public class Payment {
	private String PaymentID;
	private double PaidAmount;
	private String Date;
	private String CusID;
	private String InvoiceID;
	private String EmpID;

	// default constructor
	public Payment() {
		// TODO Auto-generated constructor stub
	}

	// overload constructor
	public Payment(String paymentID, double paidAmount, String date, String cusID, String invoiceID, String empID) {
		super();
		PaymentID = paymentID;
		PaidAmount = paidAmount;
		Date = date;
		CusID = cusID;
		InvoiceID = invoiceID;
		EmpID = empID;
	}

	// setters and getters
	public String getPaymentID() {
		return PaymentID;
	}

	public void setPaymentID(String paymentID) {
		PaymentID = paymentID;
	}

	public double getPaidAmount() {
		return PaidAmount;
	}

	public void setPaidAmount(double paidAmount) {
		PaidAmount = paidAmount;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
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

	public String getEmpID() {
		return EmpID;
	}

	public void setEmpID(String empID) {
		EmpID = empID;
	}

}
