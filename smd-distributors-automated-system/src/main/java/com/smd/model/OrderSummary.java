package com.smd.model;

public class OrderSummary {
	private int cid;
	private int oid;
	private String oDate;
	private String pName;
	private int qty;
	private String oStatus;
	private double total;
	private double amountPaid;
	private double Balance;
	
	//Default constructor
	public OrderSummary() {
		
	}
	public OrderSummary(int cid, int oid, String oDate, String pName, int qty, String oStatus, double total,
			double amountPaid, double Balance) {
		super();
		this.cid = cid;
		this.oid = oid;
		this.oDate = oDate;
		this.pName = pName;
		this.qty = qty;
		this.oStatus = oStatus;
		this.total = total;
		this.amountPaid = amountPaid;
		this.Balance = Balance;
	}

	//getters and setters
	public int getCid() {
		return cid;
	}

	public int getOid() {
		return oid;
	}

	public String getoDate() {
		return oDate;
	}

	public String getpName() {
		return pName;
	}

	public int getQty() {
		return qty;
	}

	public String getoStatus() {
		return oStatus;
	}

	public double getTotal() {
		return total;
	}

	public double getAmountPaid() {
		return amountPaid;
	}

	public double getBalance() {
		return Balance;
	}
}
