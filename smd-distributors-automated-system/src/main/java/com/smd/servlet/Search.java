package com.smd.servlet;

import java.io.IOException;

<<<<<<< HEAD
import javax.servlet.RequestDispatcher;
=======
>>>>>>> origin/master
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import com.smd.util.DBConnection;

@WebServlet("/search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Search() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBConnection dbc = new DBConnection();

//		Item[] ItemData=dbc.getSearchDetails((String) request.getParameter("search"));
//		request.setAttribute("ItemData", ItemData);
		RequestDispatcher rd=request.getRequestDispatcher("search.jsp");  
		rd.forward(request, response);
=======
@WebServlet("/search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Search() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

>>>>>>> origin/master
	}

}
