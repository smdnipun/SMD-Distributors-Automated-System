package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Vehicle;
import com.smd.service.DeliveryDBUtill;

// @WebServlet("/vdeleted")
public class DeleteVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String vnum = request.getParameter("vnum");
			
		boolean isTrue;
		
		isTrue = DeliveryDBUtill.deleteVehicle(vnum);
		
		if(isTrue==true) {
			
			List<Vehicle> vehicleDetails = DeliveryDBUtill.getVehicle();
			request.setAttribute("vehicleDetails", vehicleDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admin/DeliveryManage/VehicleDetails.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("admin/DeliveryManage/Unsuccess.jsp");
			dis2.forward(request, response);	
		}
		
	}

}
