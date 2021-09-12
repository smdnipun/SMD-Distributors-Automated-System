package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Customer;
import com.smd.service.CusDetailsServiceImpl;
import com.smd.service.ICustomerDetails;

@WebServlet("/CustomerInfoUpdate")
public class CustomerInfoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CustomerInfoUpdate() {
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
		
		PrintWriter out = response.getWriter();
		
		//get input values from jsp
		customer.setCusID((String) request.getSession().getAttribute("CustomerID"));
		customer.setFname(request.getParameter("fname"));
		customer.setLname(request.getParameter("lname"));
		customer.setHardwareName(request.getParameter("hname"));
		customer.setPhoneNo(request.getParameter("pno"));
		customer.setAddress(request.getParameter("address"));
	
		//calling the addCustomer function in CusDetailsServiceImpl and getting the status
		boolean status = cusDetails.updatedCustomer(customer);
		
		if(status == true){//if the data was passed to the database successfully
			request.getSession().setAttribute("Hname",customer.getHardwareName());
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('Details Updated Successfully');");
		    out.println("location='./PersonalInfo.jsp'");
		    out.println("</script>");
		}
		else{//if the data was not passed to the database
			//display an error message
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('There was an error please try again!!!');");
		    out.println("location='./PersonalInfo.jsp'"); //redirect to the same page
		    out.println("</script>");	
		}
	}

}
