package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;


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
		
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//get the details entered by the customer 
		String CID=request.getParameter("CID");
		
		String TPRICE=request.getParameter("TPRICE");
		String QTY=request.getParameter("QTY");
		String PID=request.getParameter("PID");
		
		double totalprice = Double.parseDouble(TPRICE);
		int cusId=Integer.parseInt(CID);  
		int quantity=Integer.parseInt(QTY); 
		int proId=Integer.parseInt(PID); 
		
		//declare is true boolean method
		boolean istrue;
		//call insert order method
		istrue=OrderM.insertorder(cusId, totalprice, quantity, proId);
		
		if(istrue==true) {
			// if successful then show the alert and redirect to Addorder
			out.println("<script type='text/javascript'>");
            out.println("alert('Add order successful');");
            out.println("location='index.jsp'"); 
            out.println("</script>");
			

		}else {
			// if unsuccessful then show the alert and redirect to Addorder
			out.println("<script type='text/javascript'>");
            out.println("alert('something went wrong');");
            out.println("location='index.jsp'"); 
            out.println("</script>");
			

			
		}
		
		
		
	}

}
