package com.smd.model;
//Create Supplier Class
public class Supplier {
	
	private int supplierID;
	private String sname;
	private String pname;
	private String address;
	private String tno;
	private String status;
//Constructor
	public Supplier(int supplierID,String sname, String pname, String address, String tno,String status){
		this.supplierID=supplierID;
		this.pname=pname;
		this.sname=sname;
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
		public void setSName(String sname) {
			this.sname = sname;
		}

		public void setPName(String pname) {
			this.pname = pname;
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
	public String getSName() {
		return sname;
	}

	public String getPName() {
		return pname;
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
