package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.CreditSalesM;
import com.smd.service.CusDetailsServiceImpl;
import com.smd.util.DBConnection;
import com.smd.util.Services;
import com.smd.model.Customer;
import com.smd.model.Order;

@WebServlet("/pay")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		// get entered data from payment form
		int CID = (Integer.parseInt(request.getParameter("CID")));
		int OID = (Integer.parseInt(request.getParameter("OID")));
		double paidAmount = Double.parseDouble(request.getParameter("PaidAmount"));

		// database connection
		CreditSalesM check = new CreditSalesM();
		Order add = check.getOrder(CID, OID);
		Customer c = new Customer();
		CusDetailsServiceImpl payaccpt = new CusDetailsServiceImpl();

		// get data from database
		double pamount = add.getPAMOUNT();
		double ramount = add.getRAMOUNT();

//		PaymentDetails pay = (PaymentDetails) request.getSession().getAttribute("Emp_ID");

//		pay.setPaidAmount(Double.parseDouble(request.getParameter("PaidAmount")));
//		pay.setDate(request.getParameter("Date"));
//		check.setOID(Integer.parseInt(request.getParameter("OID")));
//		check.setCID(Integer.parseInt(request.getParameter("CID")));
//		pay.setEmpID(request.getParameter("EmpID"));

		// Check customer ID and order ID
		// get boolean status from database connection
		boolean status = check.getPayCredit(CID, OID, paidAmount);

		// check status and entered amount is greater than zero
		if (status == false && paidAmount >= 0) {

			try {

				DBConnection pdbc = new DBConnection();
				Statement stmt = pdbc.getConnection().createStatement();
				// insert data into payment table
				String command = "INSERT INTO payment(Amount,Date,Order_ID,Cus_ID,Emp_ID)" + "VALUES('"
						+ request.getParameter("PaidAmount") + "'" + "," + "'" + request.getParameter("Date") + "'"
						+ "," + "'" + OID + "'" + "," + "'" + CID + "'" + ","
						+ request.getSession().getAttribute("empID") + ")";

				// calculate total paid and total remaining
				double TotalPaid = pamount + paidAmount;
				double TotalRemain = ramount - paidAmount;

				String command1 = "update orders SET Paid_Amount =" + TotalPaid + "," + " Remaining_Amount="
						+ TotalRemain + " WHERE Cust_ID =" + CID + " and Order_ID=" + OID;

				// update order status into paid
				String command2 = "update orders SET Order_Status ='Paid'  WHERE Remaining_Amount=0 and Cust_ID =" + CID
						+ " and Order_ID=" + OID;

				stmt.execute(command);
				stmt.executeUpdate(command1);
				stmt.executeUpdate(command2);

				// successfully paid and totally paid email
				c = payaccpt.getCustomerById(CID);
				Services s = new Services();
				s.SendPaidAmountMail(c, add, TotalRemain, paidAmount);
//				response.getWriter().append(command);
//				response.getWriter().append(command1);

				out.println("<script type=\"text/javascript\">");
				out.println("alert('You have successfully paid!!!');");
				out.println("location='admin/CreditSalesManagement/CreditPayment.jsp'"); // redirect to the registration
																							// page
				out.println("</script>");

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		else {
			// display an error message
			out.println("<script type=\"text/javascript\">");
			out.println(
					"alert('You entered the payment incorrectly, please try again !!');");
			out.println("location='admin/CreditSalesManagement/CreditPayment.jsp'");// redirect to the registration page
			out.println("</script>");

		}

	}

}
