package com.smd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentSearch
 */
@WebServlet("/PaymentSearch")
public class PaymentSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PaymentSearch() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	// redirect to the customerDetailsCredit page with search data
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "admin/CreditSalesManagement/CustomerDetailsCredit.jsp?search=" + request.getParameter("search");
		response.sendRedirect(url);
	}

}