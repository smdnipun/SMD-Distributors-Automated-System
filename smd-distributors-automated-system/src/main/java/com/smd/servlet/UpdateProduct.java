package com.smd.servlet;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.util.DBConnection;

@WebServlet("/updateproduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateProduct() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBConnection dbc = new DBConnection();
		int availability=1;
		if(request.getParameter("availablity")==null) {
			availability=0;
		}else {
			availability=1;
		}
		try {
			Statement stmt=dbc.getConnection().createStatement();
			
			String command = "UPDATE product SET Name = '"+request.getParameter("pname")+"',Product_Weight = '"+request.getParameter("pweight")+"',Unit_Price = '"+request.getParameter("pprice")+"',Availability='"+availability+"' WHERE Prod_ID ="+ request.getParameter("pid");
//			response.getWriter().append(command);
			int rows=stmt.executeUpdate(command);
			
//			Staff[] data=dbc.getStaffdetails();
//			request.getSession().setAttribute("data",data);
//			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
