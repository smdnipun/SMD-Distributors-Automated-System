package com.smd.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.FeedbackServiceImpl;
import com.smd.service.IFeedback;

@WebServlet("/UpdateFeedbackServlet")
public class UpdateFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String Feedback_ID=request.getParameter("Feedback_ID");
		String Cus_ID=request.getParameter("Cus_ID");
		String Date=request.getParameter("Date");
		String Type=request.getParameter("Type");
		String Message=request.getParameter("Message");
		String Rating=request.getParameter("Rating");
		String Status=request.getParameter("Status");

		boolean istrue;
		
		IFeedback iFeedbackService = new FeedbackServiceImpl();
		//to catch the result got from the model class method
		istrue=iFeedbackService.addFeedback(Feedback_ID,Cus_ID,Date,Type,Message,Rating,Status);
		
		//if the data was passed to the database successfully 
				if(istrue==true) {
					//redirecting from the servlet to
					RequestDispatcher dis= request.getRequestDispatcher("success.jsp");
					dis.forward(request, response);
				}
				//if the data wasn't passed to the database successfully 
				else {
					//redirecting from the servlet to
					RequestDispatcher dis= request.getRequestDispatcher("unsuccess.jsp");
					dis.forward(request, response);
				}
	}

}
