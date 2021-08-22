package com.smd.model;
//Create Supplier Class
public class Supplier {
	
	private String supplierID;
	private String name;
	private String address;
	private int tno;
//Constructor
	public Supplier(String supplierID, String name, String address, int tno){
		this.supplierID=supplierID;
		this.name=name;
		this.address=address;
		this.tno=tno;
	}
	
	public Supplier() {
		// TODO Auto-generated constructor stub
	}

		//Setters
		public void setSupplierID(String supplierID) {
			this.supplierID = supplierID;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		public void setAddress(String address) {
			this.address = address;
		}

		public void setTno(int tno) {
			this.tno = tno;
		}	


//Getters
	public String getSupplierID() {
		return supplierID;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public int getTno() {
		return tno;
	}

}
