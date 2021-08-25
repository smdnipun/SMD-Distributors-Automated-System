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

@WebServlet("/AddFeedbackServlet")
public class AddFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get the details entered by the customer and save it in a feedback object		
				String Feedback_ID=request.getParameter("Feedback_ID");
				String Cus_ID=request.getParameter("Cus_ID");
				String Date=request.getParameter("Date");
				String Type=request.getParameter("Type");
				String Message=request.getParameter("Message");
				String Rating=request.getParameter("Rating");
				String Status=request.getParameter("Status");

				try{
					IFeedback iFeedbackService = new FeedbackServiceImpl();
					//to catch the result got from the model class method
					boolean status=iFeedbackService.addFeedback(Feedback_ID,Cus_ID,Date,Type,Message,Rating,Status);
					
					if(status==true) {//if the data was passed to the database successfully 
						System.out.println("Successfully Added a book !");
						
						PrintWriter out = response.getWriter();
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Added Successfully' ,  '' ,  'success' );");
						out.println("});");
						out.println("</script>"); 
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("/RequestC/customerServices.jsp");
						dispatcher.forward(request, response);//redirecting from the servlet to
					}else {//if the data wasn't passed to the database successfully 
						PrintWriter out = response.getWriter();
						out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Wrong Entry !' ,  '' ,  'error' );");
						out.println("});");
						out.println("</script>"); 
						RequestDispatcher dispatcher = request.getRequestDispatcher("/RequestC/customerServices.jsp");
						dispatcher.forward(request, response);//redirecting from the servlet to
					}
				}catch (Exception e) {
					e.printStackTrace();
				}
				
	}

}
