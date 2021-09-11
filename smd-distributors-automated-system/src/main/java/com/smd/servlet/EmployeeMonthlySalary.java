package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.EmployeeSalary;
import com.smd.service.EmployeeDBUtill;


@WebServlet("/EmployeeMonthlySalary")
public class EmployeeMonthlySalary extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get Details from EmployeeSalary list array and pass that list details to redirect page
		
		List<EmployeeSalary> employeeSalary = EmployeeDBUtill.viewEmployeeSalary();
		request.setAttribute("employeeSalary",employeeSalary);
		
		//redirect
		
		RequestDispatcher dis = request.getRequestDispatcher("admin/EmployeeManagement/EmployeeMonthSalary.jsp");
		dis.forward(request, response);
		
		
		
		
		
		
		
	}

}
