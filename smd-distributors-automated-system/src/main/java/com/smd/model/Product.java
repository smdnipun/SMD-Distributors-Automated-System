package com.smd.model;

public class Product {

	private String productID;
	private String name;
	@SuppressWarnings("unused")
	private String date;
	private int weight;
	private int price;
	private String image;
	private boolean availablity;
	
	public Product(String productID,int weight,String date, String name,int price) {
		this.productID = productID;
		this.name = name;
		this.date=date;
		this.weight = weight;
		this.price = price;
	}
	
	public Product(String productID,int weight,String date, String name,int price,boolean availablity) {
		this.productID = productID;
		this.name = name;
		this.date=date;
		this.weight = weight;
		this.price = price;
		this.availablity=availablity;
	}
	
	public Product(String productID,int weight,String date, String name,int price,boolean availablity,String image) {
		this.productID = productID;
		this.name = name;
		this.date=date;
		this.weight = weight;
		this.price = price;
		this.availablity=availablity;
		this.image=image;
	}

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
