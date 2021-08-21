package com.smd.model;

public class Customer {

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
		}
}
