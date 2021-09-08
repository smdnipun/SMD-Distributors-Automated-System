package com.smd.model;

public class Stocksummary {
	private String Name;
	private int sum;
	
	public Stocksummary(String Name, int sum) {
		this.Name=Name;
		this.sum=sum;
	}

	public String getName() {
		return Name;
	}

	public int getSum() {
		return sum;
	}

	public void setName(String name) {
		Name = name;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}
	
	

}
