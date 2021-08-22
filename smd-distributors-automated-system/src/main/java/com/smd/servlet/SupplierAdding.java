//package com.smd.servlet;
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.smd.service.FeedbackServiceImpl;
//import com.smd.service.IFeedback;
//
//@WebServlet("/AddFeedbackServlet")
//public class SupplierAdding extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		//get the Supplier details and save it in a supplier object	
//				
//				String Name=request.getParameter("Name");
//				String Address=request.getParameter("Address");
//				String Tno=request.getParameter("Tno");
//				
//				
//				Supplier  = new FeedbackServiceImpl();
//				//to catch the result got from the model class method
//				boolean status=iFeedbackService.addFeedback(Feedback_ID,Cus_ID,Date,Type,Message,Rating,Status);
//				
//				if(status==true) {//if the data was passed to the database successfully 
//					RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
//					dispatcher.forward(request, response);//redirecting from the servlet to
//				}else {//if the data wasn't passed to the database successfully 
//					RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
//					dispatcher.forward(request, response);//redirecting from the servlet to
//				}
//	}
//
//}
