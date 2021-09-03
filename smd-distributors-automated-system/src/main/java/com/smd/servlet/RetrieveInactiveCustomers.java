package com.smd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Customer;
import com.smd.service.CusDetailsServiceImpl;

/**
 * Servlet implementation class inactiveCustomers
 */
@WebServlet("/InactiveCustomers")
public class RetrieveInactiveCustomers extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RetrieveInactiveCustomers() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			CusDetailsServiceImpl cusDetails = new CusDetailsServiceImpl();
			Customer[] data = cusDetails.inactiveCustomers();//get inactive customers
			
			//creating a session
			request.getSession().setAttribute("data", data);
			
			//redirecting servlet
			response.sendRedirect("CustomerDetails.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
