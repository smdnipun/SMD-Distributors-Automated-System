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
 * Servlet implementation class viewAdminOrders
 */
@WebServlet("/viewAdminOrders")
public class viewAdminOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//call view order method	
	List<Order> orderdetails=	OrderM.ViewOrder();
	request.setAttribute("orderdetails", orderdetails);
	//redirect to orderadmin page
	RequestDispatcher dis=request.getRequestDispatcher("admin/OrderManagement/OrderAdmin.jsp");
	dis.forward(request, response);
	
	}

}
