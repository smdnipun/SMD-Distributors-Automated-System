package com.smd.servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.EmployeeDBUtill;


@WebServlet("/AttendanceEmployeeServlet")
public class AttendanceEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		String worked =request.getParameter("worked");
	    String date =request.getParameter("date");
		
		
	
		
		
		
		
		
		int ID = Integer.parseInt(id);
		int Worked = Integer.parseInt(worked);
		boolean isTrue;
		
		isTrue=EmployeeDBUtill.addAttendEmployee(ID,Worked,date);

		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("AdminUI/EmployeeManagement/addEmp.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("AdminUI/EmployeeManagement/insertUnsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}
