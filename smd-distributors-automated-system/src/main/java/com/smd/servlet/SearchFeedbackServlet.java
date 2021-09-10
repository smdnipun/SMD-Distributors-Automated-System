package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Feedback;
import com.smd.service.FeedbackServiceImpl;
import com.smd.service.IFeedback;

//@WebServlet("/SearchFeedbackServlet")
//public class SearchFeedbackServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;

//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String search=request.getParameter("search");
//		System.out.println("search"+search);
		
//		boolean istrue;
//		IFeedback fservice= new FeedbackServiceImpl();
		
		
//		try {
//			istrue=fservice.searchComplaint(search);
//			if(istrue==true) {
//				PrintWriter write=response.getWriter();
//				write.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
//				write.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
//				write.println("<script>");
//				write.println("$(document).ready(function(){");
//				write.println("swal ( 'Searching' ,  '' ,  'success' );");
//				write.println("});");
//				write.println("</script>");
//			}
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//	}

//}
