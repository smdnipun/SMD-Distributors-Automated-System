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


@WebServlet("/ViewDeletedDeliveryServlet")
public class ViewDeletedDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{					
			List<Delivery> DeletedDeliveryDetails = DeliveryDBUtill.getDeletedDelivary();
			request.setAttribute("DeletedDeliveryDetails", DeletedDeliveryDetails);
		}
		catch(Exception e) {
				e.printStackTrace();
		}
			
			RequestDispatcher dis = request.getRequestDispatcher("admin/DeliveryManage/DeletedDelivery.jsp");
			dis.forward(request, response);
			
		}
		
}

