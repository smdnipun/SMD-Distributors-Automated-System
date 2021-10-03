package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;


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
		
		
		
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");
		
        //get user input details to the variables
        
		String id =request.getParameter("id");
		String worked =request.getParameter("worked");
	    String date =request.getParameter("date");
		

		int ID = Integer.parseInt(id);
		int Worked = Integer.parseInt(worked);
		boolean isTrue;
		
		isTrue=EmployeeDBUtill.addAttendEmployee(ID,Worked,date); //pass the values to method

		if(isTrue==true) {
			
			//Java Script for redirect
			out.println("<script type='text/javascript'>");
            out.println("alert('Employee attendance and salary successfully added to the system');"); //alert
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
