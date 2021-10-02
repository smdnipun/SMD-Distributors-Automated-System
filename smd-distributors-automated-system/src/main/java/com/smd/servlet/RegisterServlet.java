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
import com.smd.util.Services;

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
		
		//Creating service class object
		Services sv = new Services();
		
		PrintWriter out = response.getWriter();
		
		boolean cFound = false;
		
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
		String pwd = sv.doHashing(request.getParameter("pwd"));
		customer.setPassword(pwd);
		
		//checking the password is correctly enter in both fields(password and re-enter password)
		if(request.getParameter("pwd").equals(request.getParameter("rpwd"))) {
			
			//checking the database whether an account with the same email exist
			for(int i=0;i<CustomerData.length;i++) {
				if((CustomerData[i].getEmail().equals(request.getParameter("email"))) || (CustomerData[i].getNIC().equals(request.getParameter("nic")))) {
					cFound = true;
					break;
				}
			}
			//check whether the customer is found
			if(cFound == false) {
				//calling the addCustomer function in CusDetailsServiceImpl and getting the status
				boolean status = cusDetails.addCustomer(customer);
				
				if(status == true){//if the data was passed to the database successfully
					//display an error message
					out.println("<script type=\"text/javascript\">");
				    out.println("alert('Successfly Registered!!!');");
				    out.println("location='./login.jsp'"); //redirect to the registration page
				    out.println("</script>");
//					response.sendRedirect("./login.jsp");
				}
				else{//if the data was not passed to the database--
					//redirect to the registration page
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/registration.jsp");
					//display an error message
					request.setAttribute("message", "There was an error please try again!!!");
					dispatcher.forward(request, response);
				}
			}
			else { //customer with same credentials found
				RequestDispatcher redirect = getServletContext().getRequestDispatcher("/registration.jsp");//redirecting 
				request.setAttribute("message", "User Already exists!!!");//error message
				redirect.forward(request, response);//redirect to 
			}
		}
		else {
			//set redirecting page
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/registration.jsp");
			//display error message
			request.setAttribute("message", "Password mismatch!!!");
			//redirect page
			dispatcher.forward(request, response);
		}
		
	}

}
