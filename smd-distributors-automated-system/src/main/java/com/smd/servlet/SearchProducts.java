package com.smd.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Product;
import com.smd.util.DBConnection;

@WebServlet("/searchP")
public class SearchProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SearchProducts() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBConnection dbc = new DBConnection();

		Product[] ProductData = dbc.search("tokyo");
		request.setAttribute("ProductData", ProductData);
		RequestDispatcher rd = request.getRequestDispatcher("admin/ProductM/all.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBConnection dbc = new DBConnection();

		Product[] ProductData = dbc.search(request.getParameter("search"));
		request.setAttribute("ProductData", ProductData);
		//response.getWriter().append();
//		RequestDispatcher rd = request.getRequestDispatcher("admin/ProductM/all.jsp");
//		rd.forward(request, response);
	}

}
