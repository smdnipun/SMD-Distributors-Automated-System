package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Employee;
import com.smd.service.EmployeeDBUtill;

@WebServlet("/EmpViewServlet")
public class EmpViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get Details from employee list array and pass that list details to redirect page
		
		List<Employee> employeeDetails = EmployeeDBUtill.viewEmployee();
		request.setAttribute("employeeDetails",employeeDetails);
		
		//redirect
		
		RequestDispatcher dis = request.getRequestDispatcher("admin/EmployeeManagement/viewEmp.jsp");
		dis.forward(request, response);
	}

}
