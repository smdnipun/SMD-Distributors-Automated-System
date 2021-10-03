package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.util.Services;


@WebServlet("/feedbackemail")
public class FeedbackEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the details entered by the customer and save it in a feedback object		
		String email=request.getParameter("email");
		PrintWriter o = response.getWriter();
		try {
			Services service= new Services();
			
			boolean test= service.SendFeedbackMail(email);
			if(test==true) { 
				//display an success message
			    PrintWriter out = response.getWriter();
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( 'Email sent to customer' ,  '' ,  'success' );");
				out.println("});");
				out.println("</script>");
				
				//redirecting from the servlet to
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/RequestManagement/viewFeedback.jsp");
				dispatcher.include(request, response);
			}
			else {
				
				//display an error message
				o.println("<script type=\"text/javascript\">");
			    o.println("alert('Please try Again !!!');");
			    o.println("</script>");
			    //redirecting from the servlet to
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/RequestManagement/viewFeedback.jsp");
				dispatcher.include(request, response);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
