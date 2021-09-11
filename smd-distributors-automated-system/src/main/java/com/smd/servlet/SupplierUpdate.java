//
//package com.smd.servlet;
//
//import java.io.IOException;
//
//import java.sql.Statement;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.smd.service.SupplierDB;
//import com.smd.util.DBConnection;
//import com.smd.model.Supplier;
//
//@WebServlet("/stock/UpdateSuppplier")
//public class SupplierUpdate extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	public SupplierUpdate() {
//		super();
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		DBConnection dbc = new DBConnection();
//
//		try {
//			Statement stmt = dbc.getConnection().createStatement();
//			String command = "UPDATE vendor set Vendor_name='" + request.getParameter("name") + "'," + "Address="
//					+ request.getParameter("address") + " where Vendor_ID=" + request.getParameter("supplierID");
//
//			int rows = stmt.executeUpdate(command);
//
//			SupplierDB sud = new SupplierDB();
//			Supplier[] data= sud.getSupplierdetails();
//		    request.getSession().setAttribute("data", data);
//			response.sendRedirect("SupplierPage.jsp");
//		} catch (Exception e) {
//			response.getWriter().append(e.toString());
//		}
//	}
//
//}

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
		
		if (request.getParameter("button").equals("update")) {
			try {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "update vendor set Vendor_Name='" + request.getParameter("sname") + "','" + request.getParameter("pname") + "',Address='"
						+ request.getParameter("address") + "'," + "Phone='" + request.getParameter("tno")
					+ "' where Vendor_Id=" + request.getParameter("supplierID");
			int rows = stmt.executeUpdate(command);
				 //response.getWriter().append(command);
				/* stmt.execute(command); */
				 response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		}
		else if (request.getParameter("button").equals("delete")) {
			try {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "update vendor set Status = 'Inactive' where Vendor_Id = " + request.getParameter("supplierID");

				int rows = stmt.executeUpdate(command);
				 //response.getWriter().append(command);
				/* stmt.execute(command); */
				 

				response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		}
	}
}

