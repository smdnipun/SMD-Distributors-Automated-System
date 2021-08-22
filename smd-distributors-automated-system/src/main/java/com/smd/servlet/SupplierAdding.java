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
import com.smd.model.Supplier;

@WebServlet("/Supplierservlet")
public class SupplierAdding extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SupplierAdding() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SupplierDB dbc = new SupplierDB();
		Supplier Supp = new Supplier();

		
		Supp.setName(request.getParameter("Name"));
		Supp.setAddress(request.getParameter("Address"));
		Supp.setTno(Integer.parseInt(request.getParameter("Tno")));
		
	

		try {
			DBConnection pdbc = new DBConnection();
			Statement stmt = pdbc.getConnection().createStatement();
			String command = "INSERT INTO vendor(Vendor_Name,Address,Phone)" + "" + "VALUES('"
					+ Supp.getName() + "','" + Supp.getAddress() + "," + "," + Supp.getTno()
			+ "')";
			stmt.execute(command);

			response.sendRedirect("Supplier.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

