package com.smd.model;
/*This is the feedback model class*/ 
public class Feedback {
	private int feedback_ID; //feedbackid is unique auto-incremented
	private int cus_ID; //passing the customer id from the entered username
	private String date;
	private String type;
	private String message;
	private int rating;
	private String status;
	
	public Feedback() {}

	//overloaded constructor to set values
	public Feedback(int Feedback_ID, int Cus_ID, String Date, String Type, String Message, int Rating,
			String Status) {
		this.feedback_ID = Feedback_ID;
		this.cus_ID = Cus_ID;
		this.date = Date;
		this.type = Type;
		this.message = Message;
		this.rating = Rating;
		this.status = Status;
	}

	//constructor for reports
	public Feedback(int Feedback_ID, int Cus_ID, String Date, String Message, String Status) {
		this.feedback_ID = Feedback_ID;
		this.cus_ID = Cus_ID;
		this.date = Date;
		this.message = Message;
		this.status = Status;
	}

	//getters and setters for each property to return the values
	public int getFeedback_ID() {
		return feedback_ID;
	}

	public int getCus_ID() {
		return cus_ID;
	}

	public String getDate() {
		return date;
	}

	public String getType() {
		return type;
	}

	public String getMessage() {
		return message;
	}

	public int getRating() {
		return rating;
	}

	public String getStatus() {
		return status;
	}

	public void setFeedback_ID(int feedback_ID) {
		this.feedback_ID = feedback_ID;
	}

	public void setCus_ID(int cus_ID) {
		this.cus_ID = cus_ID;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
