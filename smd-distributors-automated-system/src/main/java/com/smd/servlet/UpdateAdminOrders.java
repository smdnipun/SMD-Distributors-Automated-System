package com.smd.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.service.OrderM;

/**
 * Servlet implementation class UpdateAdminOrders
 */
@WebServlet("/UpdateAdminOrders")
public class UpdateAdminOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String OID=request.getParameter("OID");
		String CID=request.getParameter("CID");
		String ODATE=request.getParameter("ODATE");
		String OSTATES=request.getParameter("OSTATES");
		String TPRICE=request.getParameter("TPRICE");
		String PAT=request.getParameter("PAT");
		String RAT=request.getParameter("RAT");
		String QTY=request.getParameter("QTY");
		String PID=request.getParameter("PID");
		
		double totalprice = Double.parseDouble(TPRICE);
		double paidamount = Double.parseDouble(PAT);
		double remainamount = Double.parseDouble(PAT);
		int cusId=Integer.parseInt(CID);  
		int quantity=Integer.parseInt(QTY); 
		int proId=Integer.parseInt(PID); 
		int oid=Integer.parseInt(OID); 
		
		boolean isdone=OrderM.updateorderadmin(oid, cusId, ODATE, OSTATES, totalprice, paidamount, remainamount, quantity, proId);
		
		if(isdone==true) {
			RequestDispatcher dis=request.getRequestDispatcher("AdminUI/OrderManagement/OrderAdminHome.jsp");
			dis.forward(request, response);
		}else {
			
			RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
		
	}

}
