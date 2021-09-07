package com.smd.model;

/*model class of Delivery*/

public class Delivery {
	
	/*properties of Delivery class*/
	private int delivryID;  /*this is auto incremented and unique*/
	private String route;
	private String date;
	private String status;
	private int oID;
	private int cID;
	private String vehicle;
	
	/*overloaded constructor for assign values*/
	public Delivery(int dID, String route, String date, String status, int oID, int cID, String vehicle){
		
		this.delivryID=dID;
		this.route=route;
		this.date=date;
		this.status=status;
		this.oID=oID;
		this.cID=cID;
		this.vehicle=vehicle;
	}
	
	/*getters for return values*/
	public int getDelivryID() {
		return delivryID;
	}
	
	public String getRoute() {
		return route;
	}
	
	public String getDate() {
		return date;
	}
	
	public String getStatus() {
		return status;
	}
	
	public int getoID() {
		return oID;
	}
	
	public int getcID() {
		return cID;
	}

	public String getVehicle() {
		return vehicle;
	}
		
}
