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
 * Servlet implementation class UpdateCustomerOrders
 */
@WebServlet("/UpdateCustomerOrders")
public class UpdateCustomerOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get orderid and quantity
		String OID=request.getParameter("OID");
		String QTY=request.getParameter("QTY");
		String TPRICE=request.getParameter("TPRICE");
//		String PAT=request.getParameter("PAT");
//		String RAT=request.getParameter("RAT");
//		double pat=Double.parseDouble(PAT);
//		double rat=Double.parseDouble(RAT);
		
	
	
	
		 
		int quantity=Integer.parseInt(QTY); 
		int oid=Integer.parseInt(OID);
		double tprice=Double.parseDouble(TPRICE);
//		rat=tprice-pat;
				
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");
		//check whether the order state is delivered or not
		if(request.getParameter("OSTATES").equals("delivered")) {
        	out.println("<script type='text/javascript'>");
            out.println("alert('Sorry Order is already in Delivery process');");
            out.println("location='index.jsp'"); 
            out.println("</script>");
        }else {
        	//call the update order method 
        	boolean isdone=OrderM.updateordercustomer(oid, quantity,tprice);
    		
    		
    		
    		if(isdone==true) {
    			// if successful then show the alert and redirect to AddOrder
    			out.println("<script type='text/javascript'>");
                out.println("alert('update successfully');");
                out.println("location='index.jsp'"); 
                out.println("</script>");
    			

    		}else {
    			// if successful then show the alert and redirect to AddOrder
    			out.println("<script type='text/javascript'>");
                out.println("alert('something went wrong');");
                out.println("location='index.jsp'"); 
                out.println("</script>");
    			

    		}
        }
		
		
		
	}
		
	}


