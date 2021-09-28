package com.smd.model;

public class Vehicle {
	
	public String VehicleNum;
	public String InsurenceExp;
	public String LicenceExp;
	public String Status;
	public double weight;
	public String type;
	
	public Vehicle(String vehicleNum, String insurenceExp, String licenceExp, String status, double weight, String type) {
	
		this.VehicleNum = vehicleNum;
		this.InsurenceExp = insurenceExp;
		this.LicenceExp = licenceExp;
		this.Status = status;
		this.weight = weight;
		this.type = type;
	}

	public String getVehicleNum() {
		return VehicleNum;
	}

	public String getInsurenceExp() {
		return InsurenceExp;
	}

	public String getLicenceExp() {
		return LicenceExp;
	}

	public String getStatus() {
		return Status;
	}

	public double getWeight() {
		return weight;
	}

	public String getType() {
		return type;
	}

}

