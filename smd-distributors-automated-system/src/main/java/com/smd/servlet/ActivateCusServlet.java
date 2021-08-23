package com.smd.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.CusDetailsServiceImpl;
import com.smd.service.ICustomerDetails;

/**
 * Servlet implementation class ActivateCusServlet
 */
@WebServlet("/activate")
public class ActivateCusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ActivateCusServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//getting the id from the web page
		String customerID = request.getParameter("id");
		
		//creating object to execute setStatus function
		ICustomerDetails cusDetails = new CusDetailsServiceImpl();
		
		boolean status = cusDetails.setActive(customerID);
		
		//if data was passed to database correctly
		if(status == true) {
			//display an success message
//			request.getSession().setAttribute("message", "Customer is succesfully Activated");
			
			//redirecting to the same page
			response.sendRedirect("admin/CustomerManagement/inactiveCustomers.jsp");
//			dispatcher.forward(request, response);
		}
		else {
			//redirect to the same page
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin/CustomerManagement/inactiveCustomers.jsp");
			
			//display an error message
			request.setAttribute("message", "There was an error please try again!!!");
			dispatcher.forward(request, response);
		}
		
	}

}
