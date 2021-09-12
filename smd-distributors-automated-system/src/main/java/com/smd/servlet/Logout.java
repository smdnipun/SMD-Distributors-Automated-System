package com.smd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Logout() {
        super();
    }

    public void logout(HttpServletRequest request,HttpServletResponse response) throws IOException {
    	request.getSession().removeAttribute("Logged");
    	request.getSession().removeAttribute("Logged");
		request.getSession().removeAttribute("CustomerID");
		request.getSession().removeAttribute("Customer");
		request.getSession().removeAttribute("Hname");
		HttpSession session = request.getSession();
		session.invalidate();
    	response.sendRedirect("./login.jsp");
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logout(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logout(request,response);
	}

}
