package com.smd.model;

public class Customer {
		private String cusID;
		private String fname;
		private String lname;
		private String hardwareName;
		private String phoneNo;
		private String password;
		private String nic;
		private String email;
		private String address;
		private String status;
		private String code;
		private String date;

		/*Default constructor*/
		public Customer() {
			
		}
		
		/*customer overloaded Constructor*/
		public Customer(String cusID, String fname, String lname, String hardwareName, String phoneNo,
				String password, String nic, String email, String address, String status, String date) {
			super();
			this.cusID = cusID;
			this.fname = fname;
			this.lname = lname;
			this.hardwareName = hardwareName;
			this.phoneNo = phoneNo;
			this.password = password;
			this.nic = nic;
			this.email = email;
			this.address = address;
			this.status = status;
			this.date = date;
		}
		
		public Customer(String cusID, String email, String code) {
			this.cusID = cusID;
			this.email = email;
			this.code = code;
		}

		/*Getters and setters*/
		
		public String getCusID() {
			return cusID;
		}

		public void setCusID(String cusID) {
			this.cusID = cusID;
		}

		public String getFname() {
			return fname;
		}

		public void setFname(String fname) {
			this.fname = fname;
		}

		public String getLname() {
			return lname;
		}

		public void setLname(String lname) {
			this.lname = lname;
		}

		public String getHardwareName() {
			return hardwareName;
		}

		public void setHardwareName(String hardwareName) {
			this.hardwareName = hardwareName;
		}

		public String getPhoneNo() {
			return phoneNo;
		}

		public void setPhoneNo(String phoneNo) {
			this.phoneNo = phoneNo;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getNIC() {
			return nic;
		}

		public void setNIC(String nic) {
			this.nic = nic;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}
		
		public String getCode() {
			return code;
		}
		
		public void setCode(String code) {
			this.code = code;
		}

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
		}
}
