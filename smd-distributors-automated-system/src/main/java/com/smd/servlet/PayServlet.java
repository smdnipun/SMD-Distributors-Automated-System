package com.smd.servlet;

import java.io.IOException;

import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.CreditSalesM;
import com.smd.util.DBConnection;

@WebServlet("/pay")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CreditSalesM check = new CreditSalesM();
//		Order check=new Order();
//		PaymentDetails pay = (PaymentDetails) request.getSession().getAttribute("Emp_ID");
		
//		pay.setPaidAmount(Double.parseDouble(request.getParameter("PaidAmount")));
//		pay.setDate(request.getParameter("Date"));
//		check.setOID(Integer.parseInt(request.getParameter("OID")));
//		check.setCID(Integer.parseInt(request.getParameter("CID")));
//		pay.setEmpID(request.getParameter("EmpID"));
		int CID=(Integer.parseInt(request.getParameter("CID")));
		int OID=(Integer.parseInt(request.getParameter("OID")));

		
		boolean status = check.getPayCredit(1,1);
		
		if(status==false) {
			
		try {
			DBConnection pdbc = new DBConnection();
			Statement stmt = pdbc.getConnection().createStatement();
			String command = "INSERT INTO payment(Amount,Date,Order_ID,Cus_ID,Emp_ID)" + "VALUES('"
					+ request.getParameter("PaidAmount") + "'" + "," + "'" + request.getParameter("Date") + "'" + ","
					+ "'" + OID + "'" + "," + "'" + CID+ "'"
					+ "," + "'1'" + ")";
//			stmt.execute(command);
			response.getWriter().append(command);

			//response.sendRedirect("CreditPayment.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		}

		else{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("../../CreditPayment.jsp");
			request.setAttribute("message", "There was an error please try again!!!");
			dispatcher.forward(request, response);
			
		}
		
	}

}
