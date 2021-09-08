package com.smd.servlet;

import java.io.IOException;

import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.SupplierDB;
import com.smd.util.DBConnection;


@WebServlet("/SupplierAdding")
public class SupplierAdding extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SupplierAdding() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SupplierDB sup = new SupplierDB();
	

	try {
			  DBConnection sdbc = new DBConnection(); 
			  Statement stmt =
			  sdbc.getConnection().createStatement(); 
			  String command =
			 "INSERT INTO vendor(Vendor_Name,Address,Phone,Status)" + "" + "VALUES('"+request.getParameter("name") +"','"
			 + request.getParameter("address") + "','"
			 + request.getParameter("tno") + "','Active')"; 
			
			//response.getWriter().append(command);
			  
			  stmt.execute(command);
			  
			  response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
			 
	} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
