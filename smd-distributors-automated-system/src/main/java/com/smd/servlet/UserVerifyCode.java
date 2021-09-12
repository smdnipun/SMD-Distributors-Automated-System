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

@WebServlet("/UserVerifyCode")
public class UserVerifyCode extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserVerifyCode() {
        super();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//getting the otp from the session
			HttpSession session = request.getSession();
			Customer user = (Customer) session.getAttribute("customer");
			
			//fetch input code from front end
			String otp = request.getParameter("otp");
			
			PrintWriter out = response.getWriter();
			
			//verify the OTP code
			if(otp.equals(user.getCode())) {
				//display an successful message
				out.println("<script type=\"text/javascript\">");
			    out.println("alert('Verification Successful !!!');");
			    out.println("location='./ResetPassword.jsp'"); //redirect to the registration page
			    out.println("</script>");
			}
			else {
				//display an successful message
			    RequestDispatcher r=request.getRequestDispatcher("OTPVerification.jsp");  
				request.setAttribute("otp_err","Verification Unsuccessful Please check the OTP code sent to the email");
				r.forward(request, response);
			    
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
