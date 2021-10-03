package com.smd.servlet;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.util.DBConnection;

@WebServlet("/ReleasOrders")
public class Stockorderreleas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Stockorderreleas() {
		super();
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DBConnection dbc = new DBConnection();
	//Update order status from supplier table
			try {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "UPDATE orders SET order_status = 'Release' WHERE Order_ID = "
						+ request.getParameter("oID");
				int rows = stmt.executeUpdate(command);
				 //response.getWriter().append(command);
				
				response.sendRedirect("admin/StockManagement/SupplierorderDetails.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		

	}
}
