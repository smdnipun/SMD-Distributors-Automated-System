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

@WebServlet("/UserForgetPwd")
public class UserForgetPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserForgetPwd() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creating a object from CusDetailsServiceImpl
		ICustomerDetails cusDetails = new CusDetailsServiceImpl();
				
		//Creating service class object
		Services sv = new Services();
		
		//getting password from front end hashing the password
		String newpwd = sv.doHashing(request.getParameter("pwd"));
		
		//getting the customer id from session
		HttpSession session = request.getSession();
		Customer user = (Customer) session.getAttribute("customer");
		int customerID = Integer.parseInt(user.getCusID());
		
		//updating the password and getting the status
		Boolean status = cusDetails.updatePassword(customerID, newpwd);
		
		if(status == true) {
			//removing the session
			request.getSession().removeAttribute("customer");
			
			PrintWriter out = response.getWriter();
			//display an error message
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('Updated Successfully!!!');");
		    out.println("location='./login.jsp'"); //redirect to the registration page
		    out.println("</script>");
		}
		else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ResetBody.jsp");
			request.setAttribute("error-updatePwd", "Error!!!");
			dispatcher.forward(request, response);
		}
	}

}
