package com.smd.model;
//Create Supplier Class
public class Supplier {
	
	private int supplierID;
	private String name;
	private String address;
	private String tno;
//Constructor
	public Supplier(int supplierID, String name, String address, String tno){
		this.supplierID=supplierID;
		this.name=name;
		this.address=address;
		this.tno=tno;
	}
	
	public Supplier() {
		// created constructor
	}

		//Setters
		public void setSupplierID(int supplierID) {
			this.supplierID = supplierID;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		public void setAddress(String address) {
			this.address = address;
		}

		public void setTno(String tno) {
			this.tno = tno;
		}	


//Getters
	public int getSupplierID() {
		return supplierID;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getTno() {
		return tno;
	}

}
