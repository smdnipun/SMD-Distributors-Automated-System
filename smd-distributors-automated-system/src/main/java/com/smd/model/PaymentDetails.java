package com.smd.model;

//Create Payment class
public class PaymentDetails {
	private String PaymentID;
	private String CusName;
	private String CusID;
	private String InvoiceID;
	private String Date;
	private String ProductCode;
	private int Quantity;
	private double TotalAmount;
	private double PaidAmount;
	private double Balance;
	private String EmpID;

//Constructor

	public PaymentDetails(String paymentID, String cusName,String cusID, String invoiceID, String date, String productCode, int quantity,
			double totalAmount, double paidAmount, double balance,String empID) {
		super();
		PaymentID = paymentID;
		CusName = cusName;
		CusID = cusID;
		InvoiceID = invoiceID;
		Date = date;
		ProductCode = productCode;
		Quantity = quantity;
		TotalAmount = totalAmount;
		PaidAmount = paidAmount;
		Balance = balance;
		EmpID=empID;
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

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getProductCode() {
		return ProductCode;
	}

	public void setProductCode(String productCode) {
		ProductCode = productCode;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
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

	public String getEmpID() {
		return EmpID;
	}

	public void setEmpID(String empID) {
		EmpID = empID;
	}

}