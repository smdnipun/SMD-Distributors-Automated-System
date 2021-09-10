package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/SearchFeedbackServlet")
public class SearchFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search=request.getParameter("search");
		
		
		try {
			IFeedback ifedservice= new FeedbackServiceImpl();
			Feedback[] feeddetails= ifedservice.searchFeedback(search);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis= getServletContext().getRequestDispatcher("/RequestManage/requestHome.jsp");
		
		if(dis!=null)
			dis.include(request, response);
		else
			System.out.println("Error");
		
	}

}
