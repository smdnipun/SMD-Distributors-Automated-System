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
 * Servlet implementation class DeleteCustomerOrders
 */
@WebServlet("/DeleteCustomerOrders")
public class DeleteCustomerOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the orderid
		String oid=request.getParameter("OID");
		int Orderid=Integer.parseInt(oid);
		
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        //check the order state is delivered or not
        if(request.getParameter("OSTATES").equals("delivered")) {
        	out.println("<script type='text/javascript'>");
            out.println("alert('Sorry Order is already in Delivery process');");
            out.println("location='index.jsp'"); 
            out.println("</script>");
        }else {
        	//call the delete order admin method
        	boolean isdone=OrderM.deleteeorderadmin(Orderid);
    		
    		if(isdone==true) {
    			// if successful then show the alert and redirect to Addorder
    			out.println("<script type='text/javascript'>");
                out.println("alert('successfully deleted');");
                out.println("location='index.jsp'"); 
                out.println("</script>");
    			

    		}else {
    			// if successful then show the alert and redirect to Addorder
    			out.println("<script type='text/javascript'>");
                out.println("alert('something went wrong');");
                out.println("location='index.jsp'"); 
                out.println("</script>");
    			

    		}
        }
        
		
		
		
	}

}
