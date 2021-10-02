package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Vehicle;
import com.smd.service.DeliveryDBUtill;

@WebServlet("/UpdateVehicleServlet")
public class UpdateVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vnum = request.getParameter("vnum");
		String vin = request.getParameter("vin");
		String vl = request.getParameter("vl");
		String vs = request.getParameter("vs");
			
		boolean isTrue;
		
		isTrue = DeliveryDBUtill.updateVehicle(vnum,vin,vl,vs);
		
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
