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

@WebServlet("/viewDeliveryServlet")
public class viewDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			try{					
				List<Delivery> deliveryDetails = DeliveryDBUtill.getDelivary();
				request.setAttribute("deliveryDetails", deliveryDetails);
			}
			catch(Exception e) {
					e.printStackTrace();
			}
				
				RequestDispatcher dis = request.getRequestDispatcher("AdminUI/DeliveryManage/DeliveryDetails.jsp");
				dis.forward(request, response);
				
			}

}
