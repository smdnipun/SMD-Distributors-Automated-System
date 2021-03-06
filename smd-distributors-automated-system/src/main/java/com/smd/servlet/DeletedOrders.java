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

/**
 * Servlet implementation class DeletedOrders
 */
@WebServlet("/DeletedOrders")
public class DeletedOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//call view deleted orders method
		List<Order> deletedorders=	OrderM.ViewdeletedOrder();
		request.setAttribute("deletedorders", deletedorders);
		//redirect to the deletedOrders.jsp page 
		RequestDispatcher dis=request.getRequestDispatcher("admin/OrderManagement/DeletedOrders.jsp");
		dis.forward(request, response);
	}

}
