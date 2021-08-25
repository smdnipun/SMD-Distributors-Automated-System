package com.smd.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Customer;
import com.smd.service.CusDetailsServiceImpl;
import com.smd.service.ICustomerDetails;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
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
		
		//setting the values taken from the registration page
		customer.setFname(request.getParameter("fname"));
		customer.setLname(request.getParameter("lname"));
		customer.setHardwareName(request.getParameter("hname"));
		customer.setEmail(request.getParameter("email"));
		customer.setPhoneNo(request.getParameter("pno"));
		customer.setNIC(request.getParameter("nic"));
		customer.setAddress(
				request.getParameter("address")+ ", " +
				request.getParameter("city")+ ", " +
				request.getParameter("State")
				);
		customer.setPassword(request.getParameter("pwd"));
		
		//checking the password is correctly enter in both fields(password and re-enter password)
		if(request.getParameter("pwd").equals(request.getParameter("rpwd"))) {
			
			//checking the database whether an account with the same email exist
			for(int i=0;i<CustomerData.length;i++) {
				if((CustomerData[i].getEmail().equals(request.getParameter("email")))) {
					RequestDispatcher redirect = getServletContext().getRequestDispatcher("./registration.jsp");
					request.setAttribute("message", "User Already exists!!!");
					redirect.forward(request, response);
					break;
				}
			}
			
			//calling the addCustomer function in CusDetailsServiceImpl and getting the status
			boolean status = cusDetails.addCustomer(customer);
			
			if(status == true){//if the data was passed to the database successfully
				response.sendRedirect("./login.jsp");
			}
			else{//if the data was not passed to the database
				//redirect to the registration page
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("./registration.jsp");
				
				//display an error message
				request.setAttribute("message", "There was an error please try again!!!");
				dispatcher.forward(request, response);
			}
		}
		else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("./registration.jsp");
			request.setAttribute("message", "Password mismatch!!!");
			dispatcher.forward(request, response);
		}
		
	}

}
