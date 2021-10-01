package com.smd.service;

import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;

import com.smd.model.Feedback;
import com.smd.util.DBConnection;


public class FeedbackServiceImpl implements IFeedback {

	//creating objects
		private static Statement state=null;
		
		DBConnection con = new DBConnection();
		
		public FeedbackServiceImpl() {
		}
	
		
	@Override
	//1.method to get all the feedback details saved in the database
	public List<Feedback> getFeedback() throws SQLException {
		//to get all the feedback details saved in a tuple
		ArrayList<Feedback> feedback1= new ArrayList<Feedback>();
			try{
				state=con.getConnection().createStatement();//executing a query
				String sql="select * from feedback";
				ResultSet result= state.executeQuery(sql);			
				
				//assigned details retrieved from the database to variables
				while(result.next()) {
					int Feedback_ID=result.getInt(1);
					int Cus_ID=result.getInt(2);
					String Email=result.getString(3);
					String Date=result.getString(4);
					String Type=result.getString(5);
					String Message=result.getString(6);
					int Rating=result.getInt(7);
					String Status=result.getString(8);
					
					Feedback f1 = new Feedback(Feedback_ID,Cus_ID, Email, Date, Type,Message, Rating, Status);
					feedback1.add(f1);
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		//return the feedback array object
		return feedback1;
	}

	@Override
	//2. to get the passed feedback details inserted by the customer
	public boolean addFeedback(String Feedback_ID, String Cus_ID, String Email, String Date, String Type, String Message, String Rating, String Status) {
		boolean isSuccess = false;//assign this to false before execution of query
		
		try {
			//executing a query
			state=con.getConnection().createStatement();
			
			String sql="Insert into feedback "
					+ "values(0,'"+Cus_ID+"','"+Email+"',NOW(),'"+Type+"','"+Message+"','"+Rating+"',null)";
			
			//PreparedStatement stmt = (PreparedStatement) con.prepareStatement(sql);
				
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
	public boolean updateFeedback(String Feedback_ID, String Cus_ID, String Email,String Date, String Type, String Message, String Rating,
			String Status) {
		boolean isSuccess = false;//assign this to false before execution of query
		
		try {
			
			String sql="update feedback set Date='"+Date+"', Type='"+Type+"',Message='"+Message+"',Rating='"+Rating+"',Status='"+Status+"' where Feedback_ID='"+Feedback_ID+"'";
			//feedbackid is unique auto-incremented
			state=con.getConnection().prepareStatement(sql); //executing a query
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
			state=con.getConnection().createStatement();//executing a query
			
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
	//5.method to search feedback by date
	public Feedback[] searchFeedback(String serach) throws Exception {
		List<Feedback> f1= new LinkedList<Feedback>();
		Feedback[] feedarray= null;
		
		state=con.getConnection().createStatement();
		String sql="select * from feedback where Date LIKE '%"+ serach +"%'";
		ResultSet result= state.executeQuery(sql);
			
		while(result.next()) {
			Feedback fed= new Feedback(
					result.getInt(1),
					result.getInt(2),
					result.getString(3),
					result.getString(4),
					result.getString(5),
					result.getString(6),
					result.getInt(7),
					result.getString(8)
			);	
			f1.add(fed);
		}
		feedarray=f1.toArray(new Feedback[f1.size()]);
		return feedarray;
	}
	
	//generating monthly feedback reports
	public List<Feedback> viewMonthlyFeedbackReport(String date){
		ArrayList<Feedback> feed= new ArrayList<Feedback>();
		try {
			state=con.getConnection().createStatement();
			String sql="select * from feedback where month(Date)=extract(month from '"+date+"') and year(Date)=extract(year from '"+date+"')";
			ResultSet rs= state.executeQuery(sql);
			
			while(rs.next()) {
				int Feedback_ID=rs.getInt(1);
				int Cus_ID= rs.getInt(2);
				String Email= rs.getString(3);
				String Date= rs.getString(4);
				String Message=rs.getString(6);
				String Status=rs.getString(8);
				
				Feedback f1= new Feedback(Feedback_ID,Cus_ID,Email,Date, Message, Status);
				feed.add(f1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return feed;
	}
	
}
