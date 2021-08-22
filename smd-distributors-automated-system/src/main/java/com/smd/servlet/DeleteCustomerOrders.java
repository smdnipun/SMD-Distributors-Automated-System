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
 * Servlet implementation class DeleteCustomerOrders
 */
@WebServlet("/DeleteCustomerOrders")
public class DeleteCustomerOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oid=request.getParameter("OID");
		int Orderid=Integer.parseInt(oid);
		
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        
        if(request.getParameter("OSTATES").equals("delivered")) {
        	out.println("<script type='text/javascript'>");
            out.println("alert('Sorry Order is already in Delivery process');");
            out.println("location='AddOrder.jsp'"); 
            out.println("</script>");
        }else {
        	boolean isdone=OrderM.deleteeorderadmin(Orderid);
    		
    		if(isdone==true) {
    			
    			out.println("<script type='text/javascript'>");
                out.println("alert('successfully deleted');");
                out.println("location='AddOrder.jsp'"); 
                out.println("</script>");
    			
//    			RequestDispatcher dis=request.getRequestDispatcher("AddOrder.jsp");
//    			dis.forward(request, response);
    		}else {
    			
    			out.println("<script type='text/javascript'>");
                out.println("alert('something went wrong');");
                out.println("location='AddOrder.jsp'"); 
                out.println("</script>");
    			
//    			RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
//    			dis.forward(request, response);
    		}
        }
        
		
		
		
	}

}
