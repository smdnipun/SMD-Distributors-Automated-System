package com.smd.servlet;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.util.DBConnection;

@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateProduct() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBConnection dbc = new DBConnection();

		try {
			Statement stmt=dbc.getConnection().createStatement();
			
//			String command = "UPDATE employee SET firstName = '"+request.getParameter("fname")+"',lastName = '"+request.getParameter("lname")+"',email = '"+request.getParameter("email")+"',phoneNo='"+request.getParameter("phone")+"',password ='"+ request.getParameter("password")+"',Staff ='"+ request.getParameter("staff")+"' WHERE employeeID ="+ request.getParameter("id");
//			int rows=stmt.executeUpdate(command);
			
//			Staff[] data=dbc.getStaffdetails();
//			request.getSession().setAttribute("data",data);
//			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
