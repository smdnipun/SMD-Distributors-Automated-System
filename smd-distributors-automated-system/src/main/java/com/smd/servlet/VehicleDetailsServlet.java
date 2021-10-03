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

@WebServlet("/VehicleDetailsServlet")
public class VehicleDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try{					
			List<Vehicle> vehicleDetails = DeliveryDBUtill.getVehicle();
			request.setAttribute("vehicleDetails", vehicleDetails);
		}
		catch(Exception e) {
				e.printStackTrace();
		}
			
			RequestDispatcher dis = request.getRequestDispatcher("admin/DeliveryManage/VehicleDetails.jsp");
			dis.forward(request, response);
			
		}

}
