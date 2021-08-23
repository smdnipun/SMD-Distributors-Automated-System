package com.smd.servlet;

import java.io.IOException;

import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.CreditSalesM;
import com.smd.util.DBConnection;
import com.smd.model.PaymentDetails;

@WebServlet("/pay")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PaymentServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CreditSalesM dbc = new CreditSalesM();
		PaymentDetails pay = (PaymentDetails) request.getSession().getAttribute("Emp_ID");

//		pay.setPaidAmount(Double.parseDouble(request.getParameter("PaidAmount")));
//		pay.setDate(request.getParameter("Date"));
//		pay.setInvoiceID(request.getParameter("InvoiceID"));
//		pay.setCusID(request.getParameter("CusID"));
//		pay.setEmpID(request.getParameter("EmpID"));

		try {
			DBConnection pdbc = new DBConnection();
			Statement stmt = pdbc.getConnection().createStatement();
			String command = "INSERT INTO payment(Amount,Date,Order_ID,Cus_ID,Emp_ID)" + "VALUES('"
					+ request.getParameter("PaidAmount") + "'" + "," + "'" + request.getParameter("Date") + "'" + ","
					+ "'" + request.getParameter("InvoiceID") + "'" + "," + "'" + request.getParameter("CusID") + "'"
					+ "," + "'1'" + ")";
			stmt.execute(command);
//			response.getWriter().append(command);

			//response.sendRedirect("CreditPayment.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
