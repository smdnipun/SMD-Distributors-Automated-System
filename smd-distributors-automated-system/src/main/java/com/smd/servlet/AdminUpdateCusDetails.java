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

@WebServlet("/adminUpdate")
public class AdminUpdateCusDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminUpdateCusDetails() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creating customer object to set the values
		Customer customer = new Customer();
		
		//create an object of CusDetailsServiceImpl to check the data
		ICustomerDetails cusDetails = new CusDetailsServiceImpl();
		
		//Creating customer array to get customer details from CusDetailsServiceImpl
		Customer[] CustomerData = cusDetails.getCustomerDetails();
		
		PrintWriter out = response.getWriter();
		
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
				if( ((CustomerData[i].getEmail().equals(request.getParameter("email"))) || (CustomerData[i].getNIC().equals(request.getParameter("nic")))) 
						&& (!CustomerData[i].getCusID().equals(request.getParameter("cus_id"))) ) {
					cFound = true;
					break;
				}
			}
			
			if(cFound == false) {
				//calling the addCustomer function in CusDetailsServiceImpl and getting the status
				boolean status = cusDetails.updateCustomerfromAdmin(customer);
				
				if(status == true){//if the data was passed to the database successfully
					out.println("<script type=\"text/javascript\">");
				    out.println("alert('Updated Successfully!');");
				    out.println("location='admin/CustomerManagement/CustomerDetails.jsp'");
				    out.println("</script>");
//					response.sendRedirect("admin/CustomerManagement/CustomerDetails.jsp");
				}
				else{//if the data was not passed to the database
					//display an error message
					out.println("<script type=\"text/javascript\">");
				    out.println("alert('There was an error please try again!!!');");
				    out.println("location='admin/CustomerManagement/CustomerDetails.jsp'"); //redirect to the registration page
				    out.println("</script>");	
				}
			}	
			else { //customer with same email or NIC found found
				//display an error message
				out.println("<script type=\"text/javascript\">");
			    out.println("alert('A user with same email or NIC exist.');");
			    out.println("location='admin/CustomerManagement/CustomerDetails.jsp'"); //redirect to the registration page
			    out.println("</script>");
			}
		} 
		else if(request.getParameter("btn").equals("delete")) {
			//calling the setInactive function in deactivate account
			boolean status = cusDetails.setInactive(customer);
			
			if(status == true){//if the data was updated successfully
				//display an error message
				out.println("<script type=\"text/javascript\">");
			    out.println("alert('Deleted Successfully!');");
			    out.println("location='admin/CustomerManagement/CustomerDetails.jsp'"); //redirect to the registration page
			    out.println("</script>");
//				response.sendRedirect("admin/CustomerManagement/CustomerDetails.jsp");
			}
			else{//if the data was not passed to the database
				//display an error message
				out.println("<script type=\"text/javascript\">");
			    out.println("alert('Deleted Successfully!');");
			    out.println("location='admin/CustomerManagement/CustomerDetails.jsp'"); //redirect to the registration page
			    out.println("</script>");
			}
		
		}
		
	}

}
