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


@WebServlet("/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");
		
		
		
        //get user details to the variables
		
		String id =request.getParameter("id");
		int ID = Integer.parseInt(id);
		
		
		boolean isTrue;
		
		isTrue=EmployeeDBUtill.deleteEmployee(ID); //pass the values to method
		
		if(isTrue==true) {
			
			//Java Script for redirect
			out.println("<script type='text/javascript'>");
            out.println("alert('Employee resign proccess successfully done');"); //alert
            out.println("location='admin/EmployeeManagement/addEmp.jsp'"); //redirect
            out.println("</script>");

		
		}else {
			
			//Java Script for redirect
			out.println("<script type='text/javascript'>");
            out.println("alert('something went wrong please check again ');"); //alert
            out.println("location='admin/EmployeeManagement/addEmp.jsp'");  //redirect
            out.println("</script>");
            
		}
	}

}
