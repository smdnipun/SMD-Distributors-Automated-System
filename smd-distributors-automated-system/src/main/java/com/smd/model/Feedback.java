package com.smd.model;
/*This is the feedback model class*/ 
public class Feedback {
	private int Feedback_ID; //feedbackid is unique auto-incremented
	private int Cus_ID; //passing the customer id from the entered username
	private String Date;
	private String Type;
	private String Message;
	private String Rating;
	private String Status;
	
	public Feedback() {}

	//overloaded constructor to set values
	public Feedback(int Feedback_ID, int Cus_ID, String Date, String Type, String Message, String Rating,
			String Status) {
		this.Feedback_ID = Feedback_ID;
		this.Cus_ID = Cus_ID;
		this.Date = Date;
		this.Type = Type;
		this.Message = Message;
		this.Rating = Rating;
		this.Status = Status;
	}

	//getters for each property to return the values
	public int getFeedback_ID() {
		return Feedback_ID;
	}

	public int getCus_ID() {
		return Cus_ID;
	}

	public String getDate() {
		return Date;
	}

	public String getType() {
		return Type;
	}

	public String getMessage() {
		return Message;
	}

	public String getRating() {
		return Rating;
	}

	public String getStatus() {
		return Status;
	}

	//setters for each property
	public void setFeedback_ID(int feedback_ID) {
		Feedback_ID = feedback_ID;
	}

	public void setCus_ID(int cus_ID) {
		Cus_ID = cus_ID;
	}

	public void setDate(String date) {
		Date = date;
	}

	public void setType(String type) {
		Type = type;
	}

	public void setMessage(String message) {
		Message = message;
	}

	public void setRating(String rating) {
		Rating = rating;
	}

	public void setStatus(String status) {
		Status = status;
	}
	
}
