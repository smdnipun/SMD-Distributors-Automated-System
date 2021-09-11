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
		//getting data from the front end
		int customerID = Integer.parseInt(request.getSession().getAttribute("CustomerID").toString());
		String newpwd = request.getParameter("pwd");
		
		//creating a object from CusDetailsServiceImpl
		ICustomerDetails cusDetails = new CusDetailsServiceImpl();

		String currentPwd = cusDetails.getCustomerById(customerID).getPassword();
		
		if(request.getParameter("currentpwd").equals(currentPwd)) {
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
				
//				response.sendRedirect("./login.jsp");
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
