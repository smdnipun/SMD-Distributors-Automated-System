package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.EmployeeResignDetails;
import com.smd.service.EmployeeDBUtill;


@WebServlet("/EmployeeResignedServlet")
public class EmployeeResignedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get Details from EmployeeResignDetails list array and pass that list details to redirect page

		List<EmployeeResignDetails> employeeResnInfo = EmployeeDBUtill.viewEmployeeResignInformation();
		request.setAttribute("employeeResnInfo",employeeResnInfo);
		
		//redirect
		
		RequestDispatcher dis = request.getRequestDispatcher("admin/EmployeeManagement/ResignedEmployee.jsp");
		dis.forward(request, response);
		
		
	}

}
