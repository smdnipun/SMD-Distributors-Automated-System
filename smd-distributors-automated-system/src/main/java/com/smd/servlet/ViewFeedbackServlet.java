package com.smd.servlet;
import java.io.IOException;
import java.sql.SQLException;
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


@WebServlet("/ViewFeedbackServlet")
public class ViewFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		try {
			IFeedback iFeedbackService= new FeedbackServiceImpl();
			//get the feedback details to display it 
			List<Feedback> feedbackdetails= iFeedbackService.getFeedback();
			request.setAttribute("feedbackdetails",feedbackdetails);

		
		}catch (NullPointerException | SQLException e) {
			e.printStackTrace();
		}
		//redirecting from the servlet to
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/RequestManagement/requestHome.jsp");
		
		//RequestDispatcher dispatcher= request.getRequestDispatcher("/RequestManage/requestHome.jsp");
		if(dispatcher!=null)
			dispatcher.include(request, response);
			//dispatcher.forward(request, response);
		else
			System.out.println("error");
	}

}
