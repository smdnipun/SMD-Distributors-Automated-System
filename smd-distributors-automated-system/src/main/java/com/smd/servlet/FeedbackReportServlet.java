package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Feedback;
import com.smd.service.FeedbackServiceImpl;
import com.smd.service.IFeedback;

@WebServlet("/FeedbackReportServlet")
public class FeedbackReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fdate = request.getParameter("fdate");
		
		try{		
			IFeedback iFeedbackService= new FeedbackServiceImpl();
			List<Feedback> feedbackdetails = iFeedbackService.viewMonthlyFeedbackReport(fdate);
			request.setAttribute("feedbackdetails",feedbackdetails);
			
		}
		catch(Exception e) {
				e.printStackTrace();
		}
			
			RequestDispatcher dis = request.getRequestDispatcher("admin/RequestManagement/feedbackReport.jsp");
			dis.forward(request, response);
			
		}

}
