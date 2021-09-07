package com.smd.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.EmployeeDBUtill;


@WebServlet("/CalcSalEmployeeServlet")
public class CalcSalEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id =request.getParameter("id");
		String ot =request.getParameter("empot");
		String date =request.getParameter("date");
		String option = request.getParameter("option");
		
		int ID = Integer.parseInt(id);
		double empotH =  Double.parseDouble(ot);
		boolean isTrue;
		
		isTrue=EmployeeDBUtill.calempSal(ID, option, empotH,date);

		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("AdminUI/EmployeeManagement/addEmp.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("AdminUI/EmployeeManagement/insertUnsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}
