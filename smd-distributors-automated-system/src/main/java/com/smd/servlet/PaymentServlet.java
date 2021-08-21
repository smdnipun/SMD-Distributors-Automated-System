//package com.smd.servlet;
//
//
//import java.io.IOException;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.Statement;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//
//import com.smd.util.DBConnection;
//import com.smd.model.*;
//import com.smd.service.CreditSalesM;
//
//
//
//@WebServlet("/Paymnet/pay")
//public class PaymentServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    public PaymentServlet() {
//        super();
//    }
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int id = 0;
//		CreditSalesM dbc = new CreditSalesM();
//		int originalBalance = dbc.getPaymentdetails(Integer.parseInt(request.getParameter("CID")));
//		int originalBalance = dbc.getPaymentdetails(Integer.parseInt(request.getParameter("OrderID")));
//		try {
//			int tot=Integer.parseInt(request.getParameter("quantity"))*Integer.parseInt(request.getParameter("price"));
//			int remainingItems=originalQuantity-Integer.parseInt(request.getParameter("quantity"));
//			Statement stmt=dbc.getConnection().createStatement();
//			String command = "insert into orders(customerID,itemID,quantity,totalAmount) VALUES(1"+","+request.getParameter("itemID")+","+request.getParameter("quantity")+","+tot+")";
//			PreparedStatement ps=dbc.getConnection().prepareStatement(command,Statement.RETURN_GENERATED_KEYS);
//			
//			ps.executeUpdate();
//			ResultSet rs=ps.getGeneratedKeys();
//			
//			if(rs.next()){
//				id=rs.getInt(1);
//			}
//			
//			command= "insert into delivery(orderID,status) values("+id+",'pending')";
//			int rows=stmt.executeUpdate(command);
//			
//			command= "update item set quantity="+remainingItems+" where itemID="+Integer.parseInt(request.getParameter("itemID"));
//			rows=stmt.executeUpdate(command);
//			
//			Delivery[] data=dbc.getDeliveryDetails();
//			request.getSession().setAttribute("data", data);
//			request.getSession().removeAttribute("items");
//			Item[] items=dbc.getItemDetails();
//			request.getSession().setAttribute("items", items);
//			response.sendRedirect("index.jsp");
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//}