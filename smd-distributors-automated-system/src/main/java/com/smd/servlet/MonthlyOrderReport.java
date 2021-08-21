package com.smd.servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.MonthlyOrder;
import com.smd.model.Order;
import com.smd.service.OrderM;

/**
 * Servlet implementation class MonthlyOrderReport
 */
@WebServlet("/MonthlyOrderReport")
public class MonthlyOrderReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<MonthlyOrder> monthlyorder=	OrderM.ViewMonthlyOrderReport();
		request.setAttribute("monthlyorder", monthlyorder);
		
		RequestDispatcher dis=request.getRequestDispatcher("AdminUI/OrderManagement/MonthlyOrderReport.jsp");
		dis.forward(request, response);
		
		}
		
	}


