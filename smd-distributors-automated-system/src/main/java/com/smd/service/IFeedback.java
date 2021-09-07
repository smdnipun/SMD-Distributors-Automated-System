package com.smd.service;

import java.sql.SQLException;
import java.util.List;

import com.smd.model.Feedback;


public interface IFeedback {
		//get all feedbacks
		public List<Feedback> getFeedback() throws SQLException;
		
		//public Feedback selectFeedback(String Feedback_ID);
			
		//add feedback for feedback table
		public boolean addFeedback(String Feedback_ID, String Cus_ID, String Date, String Type, String Message, String Rating,
				String Status);
		
		//update a feedback
		public boolean updateFeedback(String Feedback_ID, String Cus_ID, String Date, String Type, String Message, String Rating,
				String Status);

		//remove a feedback
		public boolean removeFeedback(String Feedback_ID);
		
		//search a feedback
		public Feedback[] searchFeedback(String Date) throws Exception;
}
