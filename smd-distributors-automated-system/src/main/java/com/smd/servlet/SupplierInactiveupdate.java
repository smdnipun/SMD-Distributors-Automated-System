package com.smd.servlet;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.util.DBConnection;
import com.smd.model.*;
import com.smd.service.SupplierDB;

@WebServlet("/SupplierInactiveUpdate")
public class SupplierInactiveupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SupplierInactiveupdate() {
		super();
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DBConnection dbc = new DBConnection();
		
		 
			try {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "update vendor set Status = 'Active' where Vendor_Id = " + request.getParameter("supplierID");

				int rows = stmt.executeUpdate(command);
				 //response.getWriter().append(command);
				/* stmt.execute(command); */
				 

				response.sendRedirect("admin/StockManagement/SupplierInactiveDetails.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		}
	
}