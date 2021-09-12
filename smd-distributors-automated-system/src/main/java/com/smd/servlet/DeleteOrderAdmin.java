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
 * Servlet implementation class DeleteOrderAdmin
 */
@WebServlet("/DeleteOrderAdmin")
public class DeleteOrderAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//get the orderid
		String oid=request.getParameter("OID");
		int Orderid=Integer.parseInt(oid);
		
		//call delete order admin method
		boolean isdone=OrderM.deleteeorderadmin(Orderid);
		
		if(isdone==true) {
			// if successful then show the alert and redirect to OrderAdminHome
			out.println("<script type='text/javascript'>");
            out.println("alert('order deleted successfully');");
            out.println("location='admin/OrderManagement/OrderAdminHome.jsp'"); 
            out.println("</script>");
			

		}else {
			// if successful then show the alert and redirect to OrderAdminHome
			out.println("<script type='text/javascript'>");
            out.println("alert('Something went wrong');");
            out.println("location='admin/OrderManagement/OrderAdminHome.jsp'"); 
            out.println("</script>");
			

		}
		
	}

}
