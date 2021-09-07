package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Customer;
import com.smd.service.CusDetailsServiceImpl;
import com.smd.service.ICustomerDetails;

/**
 * Servlet implementation class AdminUpdateCusDetails
 */
@WebServlet("/adminUpdate")
public class AdminUpdateCusDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminUpdateCusDetails() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creating customer object to set the values
		Customer customer = new Customer();
		
		//create an object of CusDetailsServiceImpl to check the data
		ICustomerDetails cusDetails = new CusDetailsServiceImpl();
		
		//Creating customer array to get customer details from CusDetailsServiceImpl
		Customer[] CustomerData = cusDetails.getCustomerDetails();
		
		boolean cFound = false;
		
		//setting the values taken from the registration page
		customer.setCusID(request.getParameter("cus_id"));
		customer.setFname(request.getParameter("fname"));
		customer.setLname(request.getParameter("lname"));
		customer.setHardwareName(request.getParameter("hname"));
		customer.setEmail(request.getParameter("email"));
		customer.setPhoneNo(request.getParameter("pno"));
		customer.setNIC(request.getParameter("nic"));
		customer.setAddress(request.getParameter("address"));
		
		if(request.getParameter("btn").equals("update")) {
			
			for(int i=0;i<CustomerData.length;i++) {
				if((CustomerData[i].getEmail().equals(request.getParameter("email"))) || (CustomerData[i].getNIC().equals(request.getParameter("nic")))) {
					cFound = true;
					break;
				}
			}
			
			if(cFound == false) {
				//calling the addCustomer function in CusDetailsServiceImpl and getting the status
				boolean status = cusDetails.updateCustomerfromAdmin(customer);
				
				if(status == true){//if the data was passed to the database successfully
					PrintWriter out = response.getWriter();
//					out.println("<script>"
//							+ "$(document).ready(function(){"
//							+ "Swal.fire("
//							+ "  'Updates successfully!',"
//							+ "  'Customer details are updated!',"
//							+ "  'success'"
//							+ ")}");
//					out.println("</script>");
					out.println("<script type=\"text/javascript\">");
				    out.println("alert('Updated Successfully!');");
				    out.println("</script>");
					response.sendRedirect("admin/CustomerManagement/CustomerDetails.jsp");
				}
				else{//if the data was not passed to the database
					//redirect to the registration page
					RequestDispatcher dispatcher = request.getRequestDispatcher("admin/CustomerManagement/CustomerDetails.jsp");
					
					//display an error message
					request.setAttribute("message", "There was an error please try again!!!");
					dispatcher.forward(request, response);
				}
			}	
			else { //customer with same email or NIC found found
				RequestDispatcher redirect = getServletContext().getRequestDispatcher("admin/CustomerManagement/CustomerDetails.jsp");
				request.setAttribute("message", "A user wwith same email or NIC exist.");
				redirect.forward(request, response);
			}
		} 
		else if(request.getParameter("btn").equals("delete")) {
			//calling the setInactive function in deactivate account
			boolean status = cusDetails.setInactive(customer);
			
			if(status == true){//if the data was updated successfully
				response.sendRedirect("admin/CustomerManagement/CustomerDetails.jsp");
			}
			else{//if the data was not passed to the database
				//redirect to the registration page
				RequestDispatcher dispatcher = request.getRequestDispatcher("admin/CustomerManagement/CustomerDetails.jsp");
				
				//display an error message
				request.setAttribute("message", "There was an error please try again!!!");
				dispatcher.forward(request, response);
				dispatcher.include(request, response);
			}
			
		}
		
	}

}
