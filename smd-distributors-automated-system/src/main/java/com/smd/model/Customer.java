package com.smd.model;

public class Customer {
		private String cusID;
		private String fname;
		private String lname;
		private String hardwareName;
		private String phoneNo;
		private String username;
		private String password;
		private String nic;
		private String email;
		private String address;
		private String status;
		
		/*customer Constructor*/
		
		public Customer(String cusID, String fname, String lname, String hardwareName, String phoneNo, String username,
				String password, String nic, String email, String address, String status) {
			super();
			this.cusID = cusID;
			this.fname = fname;
			this.lname = lname;
			this.hardwareName = hardwareName;
			this.phoneNo = phoneNo;
			this.username = username;
			this.password = password;
			this.nic = nic;
			this.email = email;
			this.address = address;
			this.status = status;
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

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
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
	
}
