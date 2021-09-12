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
import com.smd.service.OrderM;

@WebServlet("/ViewCustomerOrders")
public class ViewCustomerOrders extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id = Integer.parseInt(request.getSession().getAttribute("CustomerID").toString());
		
		//call view order method
		List<Order> order=OrderM.ViewOrderCustomer(id);
		
		request.setAttribute("orderdetails", order);
		//redirect to myorders page
		RequestDispatcher dis=request.getRequestDispatcher("MyOrders.jsp");
		dis.forward(request, response);
	}

}