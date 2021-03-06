package com.smd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
       
    
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//get the details 
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
		//call the update method 
		boolean isdone=OrderM.updateorderadmin(oid, cusId, ODATE, OSTATES, totalprice, paidamount, remainamount, quantity, proId);
		
		if(isdone==true) {
			// if successful then show the alert and redirect to OrderAdminHome
			out.println("<script type='text/javascript'>");
            out.println("alert('Order Update Successfully');");
            out.println("location='admin/OrderManagement/OrderAdminHome.jsp'"); 
            out.println("</script>");
			

			
		}
else {
	// if successful then show the alert and redirect to OrderAdminHome	
	out.println("<script type='text/javascript'>");
    out.println("alert('Something went wrong');");
    out.println("location='admin/OrderManagement/OrderAdminHome.jsp'"); 
    out.println("</script>");
	

		}
		
	}

}
