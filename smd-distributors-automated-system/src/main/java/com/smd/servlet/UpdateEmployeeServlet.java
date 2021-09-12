package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.EmployeeDBUtill;

@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");
		
		
       //get employee details to the variables 
		
		String id =request.getParameter("id");
		String fname =request.getParameter("fname");
		String lname =request.getParameter("lname");
		String phone =request.getParameter("phone");
		String uname =request.getParameter("uname");
		String password =request.getParameter("password");
		String nic =request.getParameter("nic");
		String email =request.getParameter("email");
		String add =request.getParameter("add");
		
		int ID = Integer.parseInt(id);
		boolean isTrue;
		
		//pass the values to method
		
		isTrue=EmployeeDBUtill.updateEmployee(ID, fname, lname, phone, uname, password, nic, email, add);

		if(isTrue==true) {
			
			//Java Script for redirect
			out.println("<script type='text/javascript'>");
            out.println("alert('Employee update successfully added to the system');"); //alert
            out.println("location='admin/EmployeeManagement/addEmp.jsp'"); //redirect
            out.println("</script>");
			
		}else {
			
			//Java Script for redirect
			out.println("<script type='text/javascript'>");
            out.println("alert('something went wrong please check again ');"); //alert
            out.println("location='admin/EmployeeManagement/addEmp.jsp'"); //redirect
            out.println("</script>");
            
			
		}
		
	}

}
