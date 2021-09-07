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
import com.smd.service.DeliveryDBUtill;
import com.smd.service.DeliveryOrderUtill;


@WebServlet("/addDeliveryServlet")
public class addDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String route = request.getParameter("route");
		String date = request.getParameter("date");
		String status = request.getParameter("status");
		String oid = request.getParameter("oid");
		String cid = request.getParameter("cid");
		String vehicle = request.getParameter("vehicle");
		
		int ooid = Integer.parseInt(oid);
		int ccid = Integer.parseInt(cid);
		
		
		try{	
			List<Order> orderdetails=	DeliveryOrderUtill.ViewOrder();
			request.setAttribute("orderdetails", orderdetails);
		}
		catch(Exception e) {
				e.printStackTrace();
	
		}	
			RequestDispatcher dis3=request.getRequestDispatcher("AdminUI/DeliveryManage/AddDelivery.jsp");
			dis3.forward(request, response);
		
		
		boolean isTrue;
		
		isTrue = DeliveryDBUtill.insertDelivery(route, date, status, ooid, ccid,vehicle);
		
		if(isTrue==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminUI/DeliveryManage/AddDelivery.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("AdminUI/DeliveryManage/Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
