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

@WebServlet("/DeleteFeedbackServlet")
public class DeleteFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String feedbackid= request.getParameter("Feedback_ID");
		
		IFeedback iFeedbackService= new FeedbackServiceImpl();
		boolean issuccess=iFeedbackService.removeFeedback(feedbackid);
		
		//if the data was passed to the database successfully 
				try{
					if(issuccess==true) 
				
					{	
						PrintWriter out = response.getWriter();
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Deleted Successfully' ,  '' ,  'success' );");
						out.println("});");
						out.println("</script>"); 
						
						//redirecting from the servlet to
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/RequestManage/viewFeedback.jsp");
						dispatcher.include(request, response);
						
						//RequestDispatcher dis1= request.getRequestDispatcher("/RequestManage/requestHome.jsp");
						//dis1.forward(request, response);
					}
					//if the data wasn't passed to the database successfully 
					else 
					{	
						PrintWriter out = response.getWriter();
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Unsuccessfully' ,  '' ,  'unsuccess' );");
						out.println("});");
						out.println("</script>"); 
						
						//redirecting from the servlet to
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/RequestManage/viewFeedback.jsp");
						dispatcher.include(request, response);
					
						//RequestDispatcher dis2= request.getRequestDispatcher("/RequestManage/requestHome.jsp");
						//dis2.forward(request, response);
					}
				}catch (Exception e) {
					e.printStackTrace();
				}
	}

}
