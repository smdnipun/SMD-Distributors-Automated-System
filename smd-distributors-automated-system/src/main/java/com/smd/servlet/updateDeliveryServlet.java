package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Delivery;
import com.smd.service.DeliveryDBUtill;


@WebServlet("/updateDeliveryServlet")
public class updateDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String did = request.getParameter("did");
		String upStatus = request.getParameter("upStatus");
		
		int ddid = Integer.parseInt(did);
		
		boolean isTrue;
		
		isTrue = DeliveryDBUtill.updateDelivery(ddid, upStatus);
		
		if(isTrue==true) {
			
			List<Delivery> deliveryDetails = DeliveryDBUtill.getDelivary();
			request.setAttribute("deliveryDetails", deliveryDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admin/DeliveryManage/DeliveryDetails.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("admin/DeliveryManage/Unsuccess.jsp");
			dis2.forward(request, response);	
		}
	
	}

}
