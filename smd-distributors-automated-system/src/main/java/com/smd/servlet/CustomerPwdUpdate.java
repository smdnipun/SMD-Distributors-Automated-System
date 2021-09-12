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

@WebServlet("/CustomerPwdUpdate")
public class CustomerPwdUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CustomerPwdUpdate() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creating a object from CusDetailsServiceImpl
		ICustomerDetails cusDetails = new CusDetailsServiceImpl();
				
		//Creating service class object
		Services sv = new Services();
		
		//getting data from the front end
		int customerID = Integer.parseInt(request.getSession().getAttribute("CustomerID").toString());
		String newpwd = sv.doHashing(request.getParameter("pwd"));
		String pwd = sv.doHashing(request.getParameter("currentpwd"));

		//getting data from the database
		String currentPwd = cusDetails.getCustomerById(customerID).getPassword();
		
		//Checking old password
		if(pwd.equals(currentPwd)) {
			//updating the password and getting the status
			Boolean status = cusDetails.updatePassword(customerID, newpwd);
			
			if(status == true) {
				request.getSession().removeAttribute("Logged");
				request.getSession().removeAttribute("CustomerID");
				request.getSession().removeAttribute("Customer");
				request.getSession().removeAttribute("Hname");
				
				PrintWriter out = response.getWriter();
				//display an error message
				out.println("<script type=\"text/javascript\">");
			    out.println("alert('Updated Successfully!!!');");
			    out.println("location='./login.jsp'"); //redirect to the registration page
			    out.println("</script>");
			}
			else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Security.jsp");
				request.setAttribute("error-updatePwd", "Error!!!");
				dispatcher.forward(request, response);
			}
		}else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Security.jsp");
			request.setAttribute("currentpwd_mismatch", "The password does not match with the old");
			dispatcher.forward(request, response);
		}

	}

}
