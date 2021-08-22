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
 * Servlet implementation class AddOrder
 */
@WebServlet("/AddOrder")
public class AddOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String CID=request.getParameter("CID");
		
		String TPRICE=request.getParameter("TPRICE");
		String QTY=request.getParameter("QTY");
		String PID=request.getParameter("PID");
		
		double totalprice = Double.parseDouble(TPRICE);
		int cusId=Integer.parseInt(CID);  
		int quantity=Integer.parseInt(QTY); 
		int proId=Integer.parseInt(PID); 
		
		boolean istrue;
		istrue=OrderM.insertorder(cusId, totalprice, quantity, proId);
		
		if(istrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("product.jsp");
			dis2.forward(request, response);
			
		}
		
		
		
	}

}
