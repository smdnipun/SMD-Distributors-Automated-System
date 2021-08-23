package com.smd.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchP")
public class SearchProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SearchProducts() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="admin/ProductM/all.jsp?search="+request.getParameter("search");
		response.sendRedirect(url);
	}

}
