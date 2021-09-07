package com.smd.servlet;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.util.DBConnection;

@WebServlet("/deleteProduct")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteProduct() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Access denied: ").append(request.getContextPath());
	}

<<<<<<< HEAD
=======
	@SuppressWarnings("unused")
>>>>>>> origin/master
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBConnection dbc = new DBConnection();
		
		
		try {
			Statement stmt=dbc.getConnection().createStatement();
<<<<<<< HEAD
			String command = "delete from employee where employeeID=" + request.getParameter("id");
			int rows=stmt.executeUpdate(command);
			
//			Staff[] data=dbc.getStaffdetails();
//			request.getSession().setAttribute("data", data);
//			response.sendRedirect("index.jsp");
			
=======
			String command = "delete from product where Prod_ID=" + request.getParameter("id");
			int rows=stmt.executeUpdate(command);
			
>>>>>>> origin/master
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
