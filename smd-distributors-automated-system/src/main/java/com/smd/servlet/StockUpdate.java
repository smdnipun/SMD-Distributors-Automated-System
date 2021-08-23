//package com.smd.servlet;
//
//import java.io.IOException;
//import java.sql.ResultSet;
//import java.sql.Statement;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.smd.util.DBConnection;
//import com.smd.model.*;
//import com.smd.service.SupplierDB;
//
//@WebServlet("/StockUpdate")
//public class StockUpdate extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	public StockUpdate() {
//		super();
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		DBConnection dbc = new DBConnection();
//		
//		request.getParameter("button").equals("update");
//			try {
//				Statement stmt = dbc.getConnection().createStatement();
//				String command = "update vendor set Vendor_Name='" + request.getParameter("name") + "',Address='"
//						+ request.getParameter("address") + "'," + "Phone='" + request.getParameter("tno")
//						+ "' where Vendor_Id=" + request.getParameter("supplierID");
//				int rows = stmt.executeUpdate(command);
//				SupplierDB supdbc = new SupplierDB();
//				Supplier[] data = supdbc.getSupplierdetails();
//				request.getSession().setAttribute("supplierdata", data);
//				response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
//			} catch (Exception e) {
//				response.getWriter().append(e.toString());
//			}
//		} else if (request.getParameter("button").equals("delete")) {
//			try {
//				Statement stmt = dbc.getConnection().createStatement();
//				String command = "delete from vendor where Vendor_ID=" + request.getParameter("supplierID");
//
//				int rows = stmt.executeUpdate(command);
//
//				SupplierDB cdbc = new SupplierDB();
//				Supplier[] data = cdbc.getSupplierdetails();
//				request.getSession().setAttribute("supplierdata", data);
//				response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
//			} catch (Exception e) {
//				response.getWriter().append(e.toString());
//			}
//		}
//	}
//}
