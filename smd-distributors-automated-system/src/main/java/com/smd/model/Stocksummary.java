package com.smd.model;
//Create Stocksummmary Class

public class Stocksummary {
	private String Name;
	private int sum;
	//Constructor

	public Stocksummary(String Name, int sum) {
		this.Name=Name;
		this.sum=sum;
	}
//getters
	public String getName() {
		return Name;
	}

	public int getSum() {
		return sum;
	}
//setters
	public void setName(String name) {
		Name = name;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}
	
	

}
