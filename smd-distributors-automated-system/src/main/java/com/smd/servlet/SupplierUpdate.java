/*
 * package com.smd.servlet;
 * 
 * import java.io.IOException;
 * 
 * import java.sql.Statement;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.smd.service.SupplierDB; import com.smd.util.DBConnection; import
 * com.smd.model.Supplier;
 * 
 * 
 * @WebServlet("/stock/updateitem") public class SupplierUpdate extends
 * HttpServlet { private static final long serialVersionUID = 1L;
 * 
 * public SupplierUpdate() { super(); }
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { DBConnection dbc = new
 * DBConnection();
 * 
 * try { Statement stmt=dbc.getConnection().createStatement(); String command =
 * "update item set name='"+request.getParameter("name")+"'," +
 * "address="+request.getParameter("address")+" where SupplierID="+request.
 * getParameter("Supplier_ID");
 * 
 * int rows=stmt.executeUpdate(command);
 * 
 * 
 * // SupplierDB[] data=dbc.getSupplierDetails();
 * //request.getSession().setAttribute("data", data);
 * response.sendRedirect("SupplierPage.jsp"); } catch (Exception e) {
 * response.getWriter().append(e.toString()); } }
 * 
 * }
 */