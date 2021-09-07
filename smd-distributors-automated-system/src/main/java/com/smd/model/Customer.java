package com.smd.model;

public class Customer {
<<<<<<< HEAD

		private String CusID;
		private String FirstName;
		private String LastName;
		private String HardwareName;
		private int Phone;
		private String UserName;
		private String Password;
		private String NIC;
		private String Email;
		private String Address;
		
		
		
		public Customer(String cusID, String firstName, String lastName, String hardwareName, int phone,
				String userName, String password, String nIC, String email, String address) {
			super();
			CusID = cusID;
			FirstName = firstName;
			LastName = lastName;
			HardwareName = hardwareName;
			Phone = phone;
			UserName = userName;
			Password = password;
			NIC = nIC;
			Email = email;
			Address = address;
		}



		public String getCusID() {
			return CusID;
		}



		public void setCusID(String cusID) {
			CusID = cusID;
		}



		public String getFirstName() {
			return FirstName;
		}



		public void setFirstName(String firstName) {
			FirstName = firstName;
		}



		public String getLastName() {
			return LastName;
		}



		public void setLastName(String lastName) {
			LastName = lastName;
		}



		public String getHardwareName() {
			return HardwareName;
		}



		public void setHardwareName(String hardwareName) {
			HardwareName = hardwareName;
		}



		public int getPhone() {
			return Phone;
		}



		public void setPhone(int phone) {
			Phone = phone;
		}



		public String getUserName() {
			return UserName;
		}



		public void setUserName(String userName) {
			UserName = userName;
		}



		public String getPassword() {
			return Password;
		}



		public void setPassword(String password) {
			Password = password;
		}



		public String getNIC() {
			return NIC;
		}



		public void setNIC(String nIC) {
			NIC = nIC;
		}



		public String getEmail() {
			return Email;
		}



		public void setEmail(String email) {
			Email = email;
		}



		public String getAddress() {
			return Address;
		}



		public void setAddress(String address) {
			Address = address;
=======
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

		/*Default constructor*/
		public Customer() {
			
		}
		
		/*customer overloaded Constructor*/
		
		public Customer(String cusID, String fname, String lname, String hardwareName, String phoneNo,
				String password, String nic, String email, String address, String status) {
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
>>>>>>> origin/master
		}
}
