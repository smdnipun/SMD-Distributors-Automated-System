
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
		// check the quantity
		/*
		 * int CID = (Integer.parseInt(request.getParameter("CID"))); int OID
		 * =(Integer.parseInt(request.getParameter("OID"))); CreditSalesM check = new
		 * CreditSalesM(); Order add = check.getOrder(CID, OID);
		 */
		/*
		 * String name= request.getParameter("itemname"); int InQuantity =
		 * Integer.parseInt(request.getParameter("quntity")); int quantityOnhand =
		 * stockdb.getQuantity(name);
		 */
		/* int Quantity = quan.length; */

		if (request.getParameter("button").equals("add")) {

			try {
				DBConnection sdbc = new DBConnection();
				Statement stmt = sdbc.getConnection().createStatement();
				String command = "INSERT INTO stock(Item_name,Date,Quantity,Status)" + "" + "VALUES('"
						+ request.getParameter("itemname") + "','" + request.getParameter("date") + "','"
						+ request.getParameter("quntity") + "', 'add')";
				stmt.execute(command);
				// response.getWriter().append(command);

				// response.getWriter().append(command.toString());
				response.sendRedirect("admin/StockManagement/StockPage.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (request.getParameter("button").equals("delete")) {

			String name = request.getParameter("itemname");
			int InQuantity = Integer.parseInt(request.getParameter("quntity"));
			int quantityOnhand = stockdb.getQuantity(name);
			System.out.println(name);
			System.out.println(InQuantity);
			System.out.println(quantityOnhand);
			if (quantityOnhand > InQuantity) {

				try {
					DBConnection sdbc = new DBConnection();
					Statement stmt = sdbc.getConnection().createStatement();
					String command1 = "INSERT INTO stock(Item_name,Date,Quantity,Status)" + "" + "VALUES('"
							+ request.getParameter("itemname") + "','" + request.getParameter("date") + "','"
							+ request.getParameter("quntity") + "','delete')";
					// stmt.execute(command1);
					response.getWriter().append(command1);

					// response.sendRedirect("admin/StockManagement/StockPage.jsp");
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {
				RequestDispatcher dispatcher = getServletContext()
						.getRequestDispatcher("admin/StockManagement/StockPage.jsp");
				request.setAttribute("message", "Invalid !!");
				dispatcher.forward(request, response);

			}

		}
	}

}
