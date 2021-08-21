package com.smd.servlet;

import java.io.IOException;

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
		String fname =request.getParameter("fname");
		String lname =request.getParameter("lname");
		String worked =request.getParameter("worked");
		
		
		
		int ID = Integer.parseInt(id);
		int Worked = Integer.parseInt(worked);
		boolean isTrue;
		
		isTrue=EmployeeDBUtill.addAttendEmployee(ID, fname, lname, Worked);

		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("AdminUI/EmployeeManagement/addEmp.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("AdminUI/EmployeeManagement/insertUnsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}
