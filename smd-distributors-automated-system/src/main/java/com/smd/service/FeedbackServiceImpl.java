package com.smd.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.smd.model.Feedback;


public class FeedbackServiceImpl implements IFeedback {


	//creating objects
		private static Connection con;
		private static Statement state=null;
		
		public FeedbackServiceImpl() {
//			con=DBConnection.getConnection();
		}
		
	@Override
	//1.method to get all the feedback details saved in the database
	public ArrayList<Feedback> getFeedback() {
		//to get all the feedback details saved in a tuple
		ArrayList<Feedback> feedback= new ArrayList<Feedback>();
		
		try{
			String sql="select * from feedback";
			state=con.createStatement();//executing a query
			ResultSet result= state.executeQuery(sql);
			
			//assigned details retrieved from the database to variables
			while(result.next()) {
				int Feedback_ID=result.getInt(1);
				int Cus_ID=result.getInt(2);
				String Date=result.getString(3);
				String Type=result.getString(4);
				String Message=result.getString(5);
				String Rating=result.getString(6);
				String Status=result.getString(7);
				
				Feedback f1 = new Feedback(Feedback_ID,Cus_ID,Date, Type,Message, Rating, Status);
				feedback.add(f1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		//return the feedback array object
		return feedback;
	}

	@Override
	//2. to get the passed feedback details inserted by the customer
	public boolean addFeedback(String Feedback_ID, String Cus_ID, String Date, String Type, String Message, String Rating,
			String Status) {
		boolean isSuccess = false;//assign this to false before execution of query
		
		try {
			//executing a query
			state=con.createStatement();
			String sql="Insert into feedback "
					+ "values(0,0,'"+Date+"','"+Type+"','"+Message+"','"+Rating+"')";
			
			int result= state.executeUpdate(sql);
			
			if(result>0) {
				//insertion is successful if result is 1
				isSuccess=true;
			}
			else
				//insertion is unsuccessful
				isSuccess=false;			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;	
	}

	@Override
	//3.method to update a certain feedback tuple in the database passed by the feedbackid
	public boolean updateFeedback(String Feedback_ID, String Cus_ID, String Date, String Type, String Message, String Rating,
			String Status) {
		boolean isSuccess = false;//assign this to false before execution of query
		
		try {
			state=con.createStatement();//executing a query
			String sql="update feedback set Date='"+Date+"',"
					+ "Type='"+Type+"',Message='"+Message+"',Rating='"+Rating+"',Status='"+Status+"'"
							+ "where Feedback_ID='"+Feedback_ID+"'";
			//feedbackid is unique auto-incremented
			
			int result=state.executeUpdate(sql);
			
			if(result>0) {
				//insertion is successful
				isSuccess=true;
			}
			else
				//insertion is unsuccessful
				isSuccess=false;	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	@Override
	//4.method to delete a specific feedback detail tuple from the database
	public boolean removeFeedback(String Feedback_ID) {
		boolean isSuccess=false;//assign this to false before execution of query
		
		try {
			state=con.createStatement();//executing a query
			
			String sql="delete from feedback where Feedback_ID='"+Feedback_ID+"'"; //feedbackid is unique auto-incremented
			
			int result=state.executeUpdate(sql);
			
			if(result>0) 
			{	//insertion is successful
				isSuccess=true;
			}
			else
				//insertion is unsuccessful
				isSuccess =false;
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	@Override
	//5.method to search feedback by customerid
	public Feedback searchComplaint(String Cus_ID) {
		Feedback fed= new Feedback();
		
		try {
			String sql="select * from feedback where Cus_ID='"+Cus_ID+"'";
			java.sql.Statement state=con.createStatement();//executing a query
			ResultSet result= state.executeQuery(sql);
			
			while(result.next()) {
				fed.setFeedback_ID(result.getInt(1));
				fed.setCus_ID(result.getInt(2));
				fed.setDate(result.getString(3));
				fed.setType(result.getString(4));
				fed.setMessage(result.getString(5));
				fed.setRating(result.getString(6));
				fed.setStatus(result.getString(7));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return fed;
	}

}
