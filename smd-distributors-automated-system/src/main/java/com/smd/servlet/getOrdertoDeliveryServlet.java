package com.smd.servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Order;
import com.smd.service.DeliveryOrderUtill;

@WebServlet("/getOrdertoDeliveryServlet")
public class getOrdertoDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			try{	
				List<Order> orderdetails=	DeliveryOrderUtill.ViewOrder();
				request.setAttribute("orderdetails", orderdetails);
			}
			catch(Exception e) {
					e.printStackTrace();
		
			}	
				RequestDispatcher dis3=request.getRequestDispatcher("admin/DeliveryManage/AddDelivery.jsp");
				dis3.forward(request, response);
	}
}
