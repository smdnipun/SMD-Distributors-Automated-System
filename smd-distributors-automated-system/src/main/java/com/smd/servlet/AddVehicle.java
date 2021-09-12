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


//@WebServlet("/AddVehicle")
public class AddVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String vnum = request.getParameter("vnum");
		String ldate = request.getParameter("ldate");
		String idate = request.getParameter("idate");
		String type = request.getParameter("type");
		String weight = request.getParameter("weight");
		String status = request.getParameter("status");
		
		double wweight = Double.parseDouble(weight);

		
		boolean isTrue;
		
		isTrue = DeliveryDBUtill.insertVehicle(vnum, idate, ldate, type, wweight,status);
		
		if(isTrue==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("admin/DeliveryManage/deliveryHome.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("admin/DeliveryManage/Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	
	}

}
