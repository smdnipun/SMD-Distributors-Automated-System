
package com.smd.servlet;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.util.DBConnection;

@WebServlet("/SupplierUpdate")
public class SupplierUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SupplierUpdate() {
		super();
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DBConnection dbc = new DBConnection();
		//check buttons value and update stock status
		if (request.getParameter("button").equals("update")) {
			try {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "update vendor set Vendor_Name='" + request.getParameter("sname") + "',Product_Name='"+request.getParameter("pname") +"',Address='"+ request.getParameter("address") + "', Phone='" + request.getParameter("tno")+ "' where Vendor_Id=" + request.getParameter("supplierID");
			int rows = stmt.executeUpdate(command);
				 response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		}
		//check buttons value and delete order status
		else if (request.getParameter("button").equals("delete")) {
			try {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "update vendor set Status = 'Inactive' where Vendor_Id = " + request.getParameter("supplierID");

				int rows = stmt.executeUpdate(command);
				response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		}
	}
}
