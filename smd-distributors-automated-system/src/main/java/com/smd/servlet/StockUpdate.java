
package com.smd.servlet;

import java.io.IOException;

import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Order;
import com.smd.model.Stocksummary;
import com.smd.service.CreditSalesM;
import com.smd.service.StockDB;
import com.smd.util.DBConnection;

@WebServlet("/StockUpdate")
public class StockUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public StockUpdate() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StockDB stockdb = new StockDB();
		//Compier the databse and input value of quantity and add the data 
		if (request.getParameter("button").equals("add")) {

			try {
				DBConnection sdbc = new DBConnection();
				Statement stmt = sdbc.getConnection().createStatement();
				String command = "INSERT INTO stock(Item_name,Date,Quantity,Status)" + "" + "VALUES('"
						+ request.getParameter("itemname") + "','" + request.getParameter("date") + "','"
						+ request.getParameter("quntity") + "', 'Add')";
				stmt.execute(command);
				

				response.sendRedirect("admin/StockManagement/StockPage.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}
			//Compier the databse and input value of quantity and delete the data 
		} 
	}

}
