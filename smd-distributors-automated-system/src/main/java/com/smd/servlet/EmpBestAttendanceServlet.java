package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.EmployeeAttendance;
import com.smd.service.EmployeeDBUtill;


@WebServlet("/EmpBestAttendanceServlet")
public class EmpBestAttendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get Details from EmployeeAttendance list array and pass that list details to redirect page
		
		List<EmployeeAttendance> employeeBestAtten = EmployeeDBUtill.viewBestAttendance();
		request.setAttribute("employeeBestAtten",employeeBestAtten);
		
		//redirect
		RequestDispatcher dis = request.getRequestDispatcher("admin/EmployeeManagement/EmployeeMonthAttend.jsp");
		dis.forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
