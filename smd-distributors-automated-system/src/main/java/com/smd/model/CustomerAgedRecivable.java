package com.smd.model;

//create CustomerAgedRecivable class
public class CustomerAgedRecivable {
	private String Cus_ID;
	private String HardwareName;
	private double TotalAmount;
	private double PaidAmount;
	private double Balance;

	// constructor

	public CustomerAgedRecivable(String cus_ID, String hardwareName, double totalAmount, double paidAmount,
			double balance) {
		super();
		Cus_ID = cus_ID;
		HardwareName = hardwareName;
		TotalAmount = totalAmount;
		PaidAmount = paidAmount;
		Balance = balance;
	}

	// setters and getters
	public String getCus_ID() {
		return Cus_ID;
	}

	public void setCus_ID(String cus_ID) {
		Cus_ID = cus_ID;
	}

	public String getHardwareName() {
		return HardwareName;
	}

	public void setHardwareName(String hardwareName) {
		HardwareName = hardwareName;
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
