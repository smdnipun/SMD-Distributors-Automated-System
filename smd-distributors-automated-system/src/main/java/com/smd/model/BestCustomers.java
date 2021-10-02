package com.smd.model;

public class BestCustomers {
	private String id;
	private String hname;
	private String phoneNo;
	private String address;
	private String month;
	private String qty;
	
	public BestCustomers(String id, String hname, String phoneNo, String address, String month, String qty) {
		super();
		this.id = id;
		this.hname = hname;
		this.phoneNo = phoneNo;
		this.address = address;
		this.month = month;
		this.qty = qty;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
