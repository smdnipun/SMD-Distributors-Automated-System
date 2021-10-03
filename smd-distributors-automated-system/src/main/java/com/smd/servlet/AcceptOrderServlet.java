package com.smd.servlet;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.util.DBConnection;
import com.smd.util.Services;
import com.smd.model.*;
import com.smd.service.CreditSalesM;
import com.smd.service.CusDetailsServiceImpl;

@WebServlet("/AcceptOrders")
public class AcceptOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AcceptOrderServlet() {
		super();
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Database connections
		DBConnection dbc = new DBConnection();
		CreditSalesM paydbc = new CreditSalesM();
		CusDetailsServiceImpl payaccpt = new CusDetailsServiceImpl();
		// Connections with classes
		Services sm = new Services();
		Customer cus = new Customer();
		Order ord = new Order();
		// get values
		String id = request.getParameter("id1");
		int cusID = Integer.parseInt(id);
		int orderID = Integer.parseInt(request.getParameter("id").toString());

		// check button value and delete order
		if (request.getParameter("button").equals("decline")) {
			try {
				// send decline email
				cus = payaccpt.getCustomerById(cusID);
				ord = paydbc.getOrder(cusID, orderID);
				sm.SendDeclineMail(cus, ord);

				// delete query
				Statement stmt = dbc.getConnection().createStatement();
				String command = "delete from orders where Order_ID=" + request.getParameter("id");

				int rows = stmt.executeUpdate(command);

				NewOrdersConf[] data = paydbc.getNewOrderDetails();
				request.getSession().setAttribute("data", data);
				response.sendRedirect("admin/CreditSalesManagement/NewOrdersconfirmation.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}

		}
		// check buttons value and update order status

		else {
			try {
				// send accept email
				cus = payaccpt.getCustomerById(cusID);
				ord = paydbc.getOrder(cusID, orderID);
				sm.SendSuccessfulMail(cus, ord);

				// update query
				Statement stmt = dbc.getConnection().createStatement();
				String command = "UPDATE orders SET order_status = 'Accepted' WHERE Order_ID = "
						+ request.getParameter("id");
				int rows = stmt.executeUpdate(command);
				NewOrdersConf[] data = paydbc.getNewOrderDetails();
				request.getSession().setAttribute("data", data);
				response.sendRedirect("admin/CreditSalesManagement/NewOrdersconfirmation.jsp");
			} catch (Exception e) {
				response.getWriter().append(e.toString());
			}
		}
	}
}