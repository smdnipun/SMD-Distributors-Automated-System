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
import com.smd.service.CreditSalesM;

@WebServlet("/AcceptOrders")
public class AcceptOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AcceptOrderServlet() {
		super();
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DBConnection dbc = new DBConnection();
		// String orderID = "0";

		if (request.getParameter("button").equals("accept")) {
			try {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "UPDATE orders SET order_status = 'Accepted' WHERE Order_ID = "
						+ request.getParameter("id");
				int rows = stmt.executeUpdate(command);
				CreditSalesM paydbc = new CreditSalesM();
				NewOrdersConf[] data = paydbc.getNewOrderDetails();
				request.getSession().setAttribute("data", data);
				response.sendRedirect("admin/CreditSalesManagement/NewOrdersconfirmation.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		} else if (request.getParameter("button").equals("decline")) {
			try {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "delete from orders where Order_ID=" + request.getParameter("id");

				int rows = stmt.executeUpdate(command);

				CreditSalesM cdbc = new CreditSalesM();
				NewOrdersConf[] data = cdbc.getNewOrderDetails();
				request.getSession().setAttribute("data", data);
				response.sendRedirect("admin/CreditSalesManagement/NewOrdersconfirmation.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		}
	}
}
