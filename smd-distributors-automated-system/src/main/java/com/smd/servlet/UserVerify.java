package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smd.model.Customer;
import com.smd.service.CusDetailsServiceImpl;
import com.smd.service.ICustomerDetails;
import com.smd.util.Services;

@WebServlet("/UserVerify")
public class UserVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserVerify() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//fetch data from the values
			String email = request.getParameter("email");
			
			//getting customer details
			ICustomerDetails cus = new CusDetailsServiceImpl();
			Customer[] customerData=cus.getCustomerDetails();
			
			PrintWriter o = response.getWriter();
			
			boolean Found = false;
			
			for(int i=0;i<customerData.length;i++) {
				if(customerData[i].getEmail().equals(email)) {
					Found=true;
					if(customerData[i].getStatus().equals("Active")) {
						//create an instance of services class to send the email
						Services sm = new Services();
						String code = sm.generateOtp();
						Customer customer = new Customer(customerData[i].getCusID(),email, code);
						
						boolean test = sm.sendEmail(customer);
						
						if(test) { 
							HttpSession session = request.getSession();
							session.setAttribute("customer", customer);	//passing customer object to the session
							response.sendRedirect("./OTPVerification.jsp");
						}
						else {
							
							//display an error message
							o.println("<script type=\"text/javascript\">");
						    o.println("alert('Please try Again !!!');");
						    o.println("location='./EmailVerification.jsp'"); //redirect to the registration page
						    o.println("</script>");
						}
					}
					else {
						//redirect to page
						response.sendRedirect("ErrorDeactivatedAccount.jsp");
					}
					break;
				}
			}
			
			//if the email is not found in the database
			if(!Found) {
				//display an error message
				o.println("<script type=\"text/javascript\">");
			    o.println("alert('Account associated with this Email does not Exist !!!');");
			    o.println("location='./EmailVerification.jsp'"); //redirect to the registration page
			    o.println("</script>");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
