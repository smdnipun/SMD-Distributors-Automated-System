package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String Feedback_ID=request.getParameter("Feedback_ID");
		String Cus_ID=request.getParameter("Cus_ID");
		String Email=request.getParameter("Email");
		String Date=request.getParameter("Date");
		String Type=request.getParameter("Type");
		String Message=request.getParameter("Message");
		String Rating=request.getParameter("Rating");
		String Status=request.getParameter("Status");

		boolean istrue;
		
		IFeedback iFeedbackService = new FeedbackServiceImpl();
		//to catch the result got from the model class method
		istrue=iFeedbackService.updateFeedback(Feedback_ID, Cus_ID, Email,Date,Type, Message, Rating, Status);
		
		//if the data was passed to the database successfully 
				try{
					if(istrue==true) {
						PrintWriter out = response.getWriter();
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Updated Successfully' ,  '' ,  'success' );");
						out.println("});");
						out.println("</script>");
						
						//redirecting from the servlet to
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/RequestManagement/viewFeedback.jsp");
						dispatcher.include(request, response);
						
						//RequestDispatcher dis= request.getRequestDispatcher("/RequestManage/requestHome.jsp");
						//dis.forward(request, response);
					}
					//if the data wasn't passed to the database successfully 
					else {
						
						PrintWriter out = response.getWriter();
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Unsuccessfully' ,  '' ,  'unsuccess' );");
						out.println("});");
						out.println("</script>");
						
						//redirecting from the servlet to
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/RequestManagement/viewFeedback.jsp");
						dispatcher.include(request, response);
						
						//RequestDispatcher dis= request.getRequestDispatcher("/RequestManage/requestHome.jsp");
						//dis.forward(request, response);
					}
				}catch (Exception e) {
					e.printStackTrace();
				}
	}

}
