package com.smd.model;

public class Product {

	private String productID;
	private String name;
	private int weight;
	private int price;
	
	public Product(String productID, String name, int weight, int price) {
		this.productID = productID;
		this.name = name;
		this.weight = weight;
		this.price = price;
	}

	public String getProductID() {
		return productID;
	}

	public String getName() {
		return name;
	}

	public int getWeight() {
		return weight;
	}

	public int getPrice() {
		return price;
	}
}
