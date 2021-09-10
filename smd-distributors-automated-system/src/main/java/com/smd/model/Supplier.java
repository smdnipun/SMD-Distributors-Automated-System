package com.smd.model;
//Create Supplier Class
public class Supplier {
	
	private int supplierID;
	private String name;
	private String address;
	private String tno;
	private String status;
//Constructor
	public Supplier(int supplierID, String name, String address, String tno,String status){
		this.supplierID=supplierID;
		this.name=name;
		this.address=address;
		this.tno=tno;
		this.status=status;
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
		public void setStatus(String status) {
			this.status = status;
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

	public String getStatus() {
		return status;
	}
	

}
