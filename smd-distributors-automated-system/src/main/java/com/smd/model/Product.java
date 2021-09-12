package com.smd.model;

//create product class
public class Product {

	private String productID;
	private String name;
	@SuppressWarnings("unused")
	private String date;
	private int weight;
	private int price;
	private String image;
	private boolean availablity;

	// overload constructor
	public Product(String productID, int weight, String date, String name, int price) {
		this.productID = productID;
		this.name = name;
		this.date = date;
		this.weight = weight;
		this.price = price;
	}

	// overload constructor
	public Product(String productID, int weight, String date, String name, int price, boolean availablity) {
		this.productID = productID;
		this.name = name;
		this.date = date;
		this.weight = weight;
		this.price = price;
		this.availablity = availablity;
	}

	// overload constructor
	public Product(String productID, int weight, String date, String name, int price, boolean availablity,
			String image) {
		this.productID = productID;
		this.name = name;
		this.date = date;
		this.weight = weight;
		this.price = price;
		this.availablity = availablity;
		this.image = image;
	}

	// Setters and getters
	public String getProductID() {
		return productID;
	}

	public String getImage() {
		return image;
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

	public boolean getAvailablity() {
		return availablity;
	}

}
